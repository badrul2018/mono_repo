# My Monorepo

This monorepo manages the following projects:

- **Web App** – React (Vite)
- **Mobile App** – React Native CLI
- **API** – Node.js with Express
- **Shared Packages** – UI components, utilities, and TypeScript types.

---

## 📁 Project Structure

mono_repo/ ├── apps/ # All runnable applications │ ├── web/ # React (Vite or Next.js) frontend │ ├── mobile/ # React Native CLI project (iOS + Android) │ └── api/ # Node.js backend (Express or Nest.js) │ ├── packages/ # Reusable shared code │ ├── ui/ # Shared UI components (Web + Mobile) │ ├── utils/ # Shared utility functions │ └── types/ # Shared TypeScript types/interfaces │ ├── .husky/ # Git hooks (e.g. pre-commit via lint-staged) ├── .vscode/ # Recommended VSCode workspace settings ├── .gitignore # Git ignored files and folders ├── .eslintrc.js # Root ESLint configuration ├── .prettierrc # Prettier formatting rules ├── turbo.json # Turborepo pipeline config ├── package.json # Root dependencies and scripts ├── tsconfig.json # Base TypeScript config for all packages └── README.md # Monorepo structure documentation

## 📦 Installing Packages Per App

### ✅ For `web` only:

To install `@reduxjs/toolkit` only in the **web** app:

````bash
npm install @reduxjs/toolkit react-redux --workspace=web

### ✅ For `mobile` only:

To install `@reduxjs/toolkit` only in the **mobile** app:

```bash
npm install @reduxjs/toolkit react-redux --workspace=mobile



---

## 🧑‍💻 Local Development Commands

> All commands are run from the root (`mono_repo/`)

### ▶️ Start web

```bash
npm run dev:web

### ▶️ Start mobile in ios

```bash
npm run run:ios

### ▶️ Start backend

```bash
npm run dev:api
````
