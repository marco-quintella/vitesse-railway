---
title: Vue Vitesse [Oct 26]
description: Opinionated Vite + Vue starter (October 2026). Vue 3, Vite 8, UnoCSS, served by Caddy.
tags:
  - Node
  - Vue 3
  - Vite
  - TypeScript
  - Markdown
  - PWA
  - Caddy
---

# Deploy and Host Vue Vitesse on Railway

Opinionated Vite + Vue starter, synced with [antfu-collective/vitesse](https://github.com/antfu-collective/vitesse) at `a878526` (6 Oct 2026). One click builds the static site and serves it with Caddy.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/template/Van86l?referralCode=2Sbs5r)

<p align='center'>
  <img src='https://user-images.githubusercontent.com/11247099/154486817-f86b8f20-5463-4122-b6e9-930622e757f2.png' alt='Vitesse - Opinionated Vite Starter Template' width='600'/>
</p>

## About Hosting Vue Vitesse

Railpack installs Node 24, pnpm 10.30.2, and Caddy 2.11.7, then runs `pnpm build`. [vite-ssg](https://github.com/antfu/vite-ssg) writes the site to `dist`. Caddy listens on Railway's `$PORT` and serves those files.

- Pre-rendered routes such as `/about` are served from their `.html` files
- Unknown paths fall back to `index.html` for client-side routing
- `GET /health` returns `ok`

Requires Node.js 22.22.2+, 24.15.0+, or 26+. This snapshot includes Vite 8, Vue Router 5, beasties, and the Cypress install fix for a warm pnpm cache.

> **Note**: This template is created during the early transition of Vue 3 and Vite. At this moment, if you are seeking for better Vue developer experience and more consistent maintenance, we recommend using [Nuxt](https://nuxt.com) instead (it also works perfectly with SPA or SSG as needed). This template still serves as a reference, but expect slower updates.

## Why Deploy Vue Vitesse on Railway?

- The October 2026 stack is already pinned: Vite 8, Vue 3.5, Vue Router 5, Pinia 4, UnoCSS.
- No extra services. The build is static and Caddy is the only runtime process.
- HTTPS and the public domain come from Railway. Caddy leaves TLS to the platform.
- `/health` is a real check, separate from the app HTML.

## Common Use Cases

- Mock a Vue 3 app with file-based routing, layouts, and i18n already wired.
- Ship a static PWA with markdown pages and UnoCSS.
- Start a client-rendered prototype that still pre-renders the public routes.

## Dependencies for Vue Vitesse Hosting

### Deployment Dependencies

- [Vue 3](https://github.com/vuejs/core) and [Vite 8](https://github.com/vitejs/vite) (`vite` 8.3)
- [pnpm](https://pnpm.io/) 10.30.2
- [Caddy](https://caddyserver.com/) 2.11.7
- [vite-ssg](https://github.com/antfu/vite-ssg) 28.3 and [beasties](https://github.com/danielroe/beasties) for critical CSS
- Upstream commit [a878526](https://github.com/antfu-collective/vitesse/commit/a8785264f8)

## Features

- ⚡️ [Vue 3](https://github.com/vuejs/core), [Vite 8](https://github.com/vitejs/vite), [pnpm](https://pnpm.io/), [Rolldown](https://rolldown.rs/)

- 🗂 File based routing via [Vue Router 5](https://github.com/vuejs/router) (`vue-router/vite`)

- 📦 [Components auto importing](./src/components)

- 🍍 [State Management via Pinia](https://pinia.vuejs.org/)

- 📑 [Layout system](./src/layouts)

- 📲 [PWA](https://github.com/antfu/vite-plugin-pwa)

- 🎨 [UnoCSS](https://github.com/antfu/unocss) - the instant on-demand atomic CSS engine

- 😃 [Use icons from any icon sets with classes](https://github.com/antfu/unocss/tree/main/packages/preset-icons)

- 🌍 [I18n ready](./locales)

- 🗒 [Markdown Support](https://github.com/unplugin/unplugin-vue-markdown)

- 🔥 Use the [new `<script setup>` syntax](https://github.com/vuejs/rfcs/pull/227)

- 📥 [APIs auto importing](https://github.com/antfu/unplugin-auto-import) - use Composition API and others directly

- 🖨 Static-site generation (SSG) via [vite-ssg](https://github.com/antfu/vite-ssg)

- 🦔 Critical CSS via [beasties](https://github.com/danielroe/beasties)

- 🦾 TypeScript, of course

- ⚙️ Unit Testing with [Vitest](https://github.com/vitest-dev/vitest), E2E Testing with [Cypress](https://cypress.io/) on [GitHub Actions](https://github.com/features/actions)

- ☁️ One-click deploy on Railway, with Caddy in front of the static build

## Pre-packed

### UI Frameworks

- [UnoCSS](https://github.com/antfu/unocss) - The instant on-demand atomic CSS engine.

### Icons

- [Iconify](https://iconify.design) - use icons from any icon sets [🔍Icônes](https://icones.netlify.app/)
- [Pure CSS Icons via UnoCSS](https://github.com/antfu/unocss/tree/main/packages/preset-icons)

### Plugins

- [Vue Router 5](https://github.com/vuejs/router) - file system based routing through `vue-router/vite`
  - [`vite-plugin-vue-layouts`](https://github.com/JohnCampionJr/vite-plugin-vue-layouts) - layouts for pages
- [Pinia](https://pinia.vuejs.org) - Intuitive, type safe, light and flexible Store for Vue using the composition api
- [`unplugin-vue-components`](https://github.com/antfu/unplugin-vue-components) - components auto import
- [`unplugin-auto-import`](https://github.com/antfu/unplugin-auto-import) - Directly use Vue Composition API and others without importing
- [`vue-macros`](https://github.com/vue-macros/vue-macros) - Explore and extend more macros and syntax sugar to Vue.
- [`vite-plugin-pwa`](https://github.com/antfu/vite-plugin-pwa) - PWA
- [`unplugin-vue-markdown`](https://github.com/unplugin/unplugin-vue-markdown) - Markdown as components / components in Markdown
  - [`@shikijs/markdown-exit`](https://github.com/shikijs/shiki) - [Shiki](https://github.com/shikijs/shiki) for syntax highlighting
- [Vue I18n](https://github.com/intlify/vue-i18n-next) - Internationalization
  - [`unplugin-vue-i18n`](https://github.com/intlify/bundle-tools/tree/main/packages/unplugin-vue-i18n) - unplugin for Vue I18n
- [VueUse](https://github.com/antfu/vueuse) - collection of useful composition APIs
- [`vite-ssg-sitemap`](https://github.com/jbaubree/vite-ssg-sitemap) - Sitemap generator
- [`@unhead/vue v2`](https://github.com/unjs/unhead) - manipulate document head reactively
- [`vite-plugin-vue-devtools`](https://github.com/vuejs/devtools-next) - Designed to enhance the Vue developer experience.

### Coding Style

- Use Composition API with [`<script setup>` SFC syntax](https://github.com/vuejs/rfcs/pull/227)
- [ESLint](https://eslint.org/) with [@antfu/eslint-config](https://github.com/antfu/eslint-config), single quotes, no semi.

### Dev tools

- [TypeScript](https://www.typescriptlang.org/)
- [Vitest](https://github.com/vitest-dev/vitest) - Unit testing powered by Vite
- [Cypress](https://cypress.io/) - E2E testing
- [pnpm](https://pnpm.js.org/) - fast, disk space efficient package manager
- [`vite-ssg`](https://github.com/antfu/vite-ssg) - Static-site generation
  - [beasties](https://github.com/danielroe/beasties) - Critical CSS
- [Caddy](https://caddyserver.com/) - serves the production build on Railway
- [VS Code Extensions](./.vscode/extensions.json)
  - [Vite](https://marketplace.visualstudio.com/items?itemName=antfu.vite) - Fire up Vite server automatically
  - [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) - Vue 3 `<script setup>` IDE support
  - [Iconify IntelliSense](https://marketplace.visualstudio.com/items?itemName=antfu.iconify) - Icon inline display and autocomplete
  - [i18n Ally](https://marketplace.visualstudio.com/items?itemName=lokalise.i18n-ally) - All in one i18n support
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

## Variations

Official and community forks, including Vitesse Lite and Vitesse Nuxt, are listed in the [upstream variations](https://github.com/antfu-collective/vitesse#variations).

## Usage

### Development

Requires Node.js 22.22.2+, 24.15.0+, or 26+.

```bash
pnpm i
pnpm dev
```

Open http://localhost:3333

### Build

```bash
pnpm build
```

The static site is written to `dist`.

### Deploy on Railway

Use the button above, or deploy this directory with the Railway CLI:

```bash
railway up
```

Caddy listens on `$PORT` and serves `dist`.
