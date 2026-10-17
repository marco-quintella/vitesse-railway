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

<p align='center'>
  <img src='https://user-images.githubusercontent.com/11247099/154486817-f86b8f20-5463-4122-b6e9-930622e757f2.png' alt='Vitesse - Opinionated Vite Starter Template' width='600'/>
</p>

<p align='center'>
Mocking up web app with <b>Vitesse</b><sup><em>(speed)</em></sup><br>
October 2026 snapshot, served by Caddy on Railway
</p>

<center>

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/template/Van86l?referralCode=2Sbs5r)

</center>

<p align='center'>
<a href="https://vitesse.netlify.app/">Upstream demo</a>
</p>

> Synced with [antfu-collective/vitesse](https://github.com/antfu-collective/vitesse) at `a878526` (6 Oct 2026): Vite 8, Vue Router 5, beasties, and the Cypress install fix for a warm pnpm cache. Requires Node.js 22.22.2+, 24.15.0+, or 26+.

> **Note**: This template is created during the early transition of Vue 3 and Vite. At this moment, if you are seeking for better Vue developer experience and more consistent maintenance, we recommend using [Nuxt](https://nuxt.com) instead (it also works perfectly with SPA or SSG as needed). This template still serves as a reference, but expect slower updates.

## Deploy on Railway

The one-click button creates a service from this repo. Railpack installs Node 24 and Caddy, runs `pnpm build`, and Caddy serves the `dist` static site on Railway's `$PORT`.

- Pre-rendered routes such as `/about` are served from their `.html` files
- Unknown paths fall back to `index.html` for client-side routing
- `GET /health` returns `ok`

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

As this template is strongly opinionated, the following provides a curated list for community-maintained variations with different preferences and feature sets. Check them out as well.

###### Official

- [vitesse-lite](https://github.com/antfu/vitesse-lite) - Lightweight version of Vitesse
- [vitesse-nuxt3](https://github.com/antfu/vitesse-nuxt3) - Vitesse for Nuxt 3
- [vitesse-nuxt-bridge](https://github.com/antfu/vitesse-nuxt-bridge) - Vitesse for Nuxt 2 with Bridge
- [vitesse-webext](https://github.com/antfu/vitesse-webext) - WebExtension Vite starter template

###### Community

- [vitesse-ssr-template](https://github.com/frandiox/vitesse-ssr-template) by [@frandiox](https://github.com/frandiox) - Vitesse with SSR
- [vitailse](https://github.com/zynth17/vitailse) by [@zynth17](https://github.com/zynth17) - Like Vitesse but with TailwindCSS
- [vitesse-modernized-chrome-ext](https://github.com/xiaoluoboding/vitesse-modernized-chrome-ext) by [@xiaoluoboding](https://github.com/xiaoluoboding) - ⚡️ Modernized Chrome Extension Manifest V3 Vite Starter Template
- [vitesse-stackter-clean-architect](https://github.com/shamscorner/vitesse-stackter-clean-architect) by [@shamscorner](https://github.com/shamscorner) - A modular clean architecture pattern in vitesse template
- [vitesse-enterprise](https://github.com/FranciscoKloganB/vitesse-enterprise) by [@FranciscoKloganB](https://github.com/FranciscoKloganB) - Consistent coding styles regardless of team-size.
- [vitecamp](https://github.com/nekobc1998923/vitecamp) by [@nekobc1998923](https://github.com/nekobc1998923) - Like Vitesse but without SSG/SSR/File based routing, includes Element Plus
- [vitesse-h5](https://github.com/YunYouJun/vitesse-h5) by [@YunYouJun](https://github.com/YunYouJun) - Vitesse for Mobile
- [bat](https://github.com/olgam4/bat) by [@olgam4](https://github.com/olgam4) - Vitesse for SolidJS
- [vitesse-solid](https://github.com/xbmlz/vitesse-solid) by [@xbmlz](https://github.com/xbmlz) - Vitesse for SolidJS, build with [`SolidStart`](https://start.solidjs.com/), includes [UnoCSS](https://github.com/unocss/unocss).
- [vue3-vant-mobile](https://github.com/easy-temps/vue3-vant-mobile) by [CharleeWa](https://github.com/CharleeWa) - Like Vitesse but without SSG/SSR, includes Vant

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
