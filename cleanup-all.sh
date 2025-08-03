#!/bin/bash

delete_deployments_page() {
    local next_param="$1"
    
    if [ -n "$next_param" ]; then
        echo "Récupération de la page suivante... (--next $next_param)"
        local output=$(vercel ls --next "$next_param")
    else
        echo "Récupération de la première page..."
        local output=$(vercel ls)
    fi
    
    # Extraire les URLs des déploiements (ignorer la première ligne - plus récent)
    local deployments=$(echo "$output" | grep -E "https://.*\.vercel\.app" | tail -n +2 | awk '{print $1}')
    
    # Supprimer chaque déploiement
    while IFS= read -r deployment; do
        if [ -n "$deployment" ]; then
            echo "Suppression: $deployment"
            vercel rm "$deployment" --yes
            sleep 0.5  # Eviter le rate limiting
        fi
    done <<< "$deployments"
    
    # Chercher le prochain paramètre --next
    local next_page=$(echo "$output" | grep -oE "vercel ls --next [0-9]+" | grep -oE "[0-9]+$")
    
    if [ -n "$next_page" ]; then
        echo "Page suivante trouvée: $next_page"
        delete_deployments_page "$next_page"
    else
        echo "Toutes les pages traitées !"
    fi
}

# Commencer par la première page
delete_deployments_page
