# Migrate Domain

A Next.js application designed to handle domain redirections during domain changes between Vercel and other domain providers.

## 🎯 Purpose

This project serves as a domain redirection service that helps manage the transition between different domain providers, specifically when migrating from or to Vercel. It provides a centralized solution for handling domain redirects during domain changes.

## 🚀 Features

- **Domain Redirection**: Handle redirects between old and new domains
- **Vercel Integration**: Optimized for Vercel deployment
- **Next.js 15**: Built with the latest Next.js framework
- **TypeScript**: Full TypeScript support for type safety
- **Tailwind CSS**: Modern styling with Tailwind CSS v4

## 📋 Prerequisites

- Node.js 18+ 
- pnpm (recommended) or npm
- A Vercel account (for deployment)

## 🛠️ Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/cobra91/migrate-domain.git
   cd migrate-domain
   ```

2. **Install dependencies:**
   ```bash
   pnpm install
   # or
   npm install
   ```

3. **Run the development server:**
   ```bash
   pnpm dev
   # or
   npm run dev
   ```

4. **Open your browser:**
   Navigate to [http://localhost:3000](http://localhost:3000) to see the application.

## 🏗️ Project Structure

```
migrate-domain/
├── app/                    # Next.js App Router
│   ├── layout.tsx         # Root layout
│   ├── page.tsx           # Home page
│   └── globals.css        # Global styles
├── public/                # Static assets
├── package.json           # Dependencies and scripts
├── next.config.ts         # Next.js configuration
├── tsconfig.json          # TypeScript configuration
└── README.md             # This file
```

## 🔧 Configuration

### Domain Configuration

To configure domain redirects, you'll need to:

1. **Set up your domains** in your domain provider
2. **Configure DNS records** to point to your Vercel deployment
3. **Update the redirection logic** in the application

## 🚀 Deployment

### Deploy to Vercel

1. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin master
   ```

2. **Deploy on Vercel:**
   - Connect your GitHub repository to Vercel
   - Vercel will automatically detect it's a Next.js project
   - Configure your domain settings in Vercel dashboard

### Manual Deployment

```bash
# Build the application
pnpm build

# Start the production server
pnpm start
```

## 🔄 Domain Migration Process

1. **Prepare the new domain** in your domain provider
2. **Deploy this application** to Vercel
3. **Configure DNS records** to point to your Vercel deployment
4. **Update the redirection logic** in the application
5. **Test the redirects** to ensure they work correctly
6. **Update your main application** to use the new domain

## 🧪 Development

### Available Scripts

- `pnpm dev` - Start development server
- `pnpm build` - Build for production
- `pnpm start` - Start production server
- `pnpm lint` - Run ESLint

### Adding New Features

1. Create new components in the `app/` directory
2. Add new pages following Next.js App Router conventions
3. Update the redirection logic as needed
4. Test thoroughly before deployment

## 📝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/cobra91/migrate-domain/issues) page
2. Create a new issue if your problem isn't already listed
3. Provide detailed information about your setup and the problem

## 🔗 Related Links

- [Next.js Documentation](https://nextjs.org/docs)
- [Vercel Documentation](https://vercel.com/docs)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)

---

**Note:** This project is specifically designed for domain migration scenarios. Make sure to test thoroughly in a staging environment before applying to production domains.
