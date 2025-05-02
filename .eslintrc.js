module.exports = {
  root: true,
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint', 'react', 'react-hooks', 'jsx-a11y', 'import', 'prettier'],
  extends: ['airbnb', 'airbnb/hooks', 'airbnb-typescript', 'plugin:prettier/recommended'],
  parserOptions: {
    project: ['./tsconfig.json'],
    tsconfigRootDir: __dirname,
    sourceType: 'module',
  },
  rules: {
    'react/react-in-jsx-scope': 'off',
    'import/no-extraneous-dependencies': 'off',
    'prettier/prettier': ['error'],
    'import/no-unresolved': 'off',
  },
  settings: {
    react: {
      version: 'detect',
    },
  },
};
