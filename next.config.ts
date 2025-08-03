/** @type {import('next').NextConfig} */
const nextConfig = {
  async redirects() {
    return [
      // Redirection de la page d'accueil
      {
        source: '/',
        destination: 'https://chats-llm.com',
        permanent: true, // 301 redirect
      },
      // Redirections des pages spécifiques
      {
        source: '/ai-dashboard',
        destination: 'https://chats-llm.com/ai-dashboard',
        permanent: true,
      },
      {
        source: '/user-guide',
        destination: 'https://chats-llm.com/user-guide',
        permanent: true,
      },
      {
        source: '/patch-notes',
        destination: 'https://chats-llm.com/patch-notes',
        permanent: true,
      },
      {
        source: '/chat',
        destination: 'https://chats-llm.com/chat',
        permanent: true,
      },
      // Redirection globale pour toutes les autres pages
      {
        source: '/:path*',
        destination: 'https://chats-llm.com/:path*',
        permanent: true,
      },
    ]
  },
}

module.exports = nextConfig
