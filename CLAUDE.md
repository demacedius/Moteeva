# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a SvelteKit 2 application for Moteeva, a sports/activity platform website. The project uses Svelte 5 with TypeScript, styled with Tailwind CSS v4.

## Development Commands

### Start Development Server
```bash
npm run dev
# Opens at http://localhost:5173
# Add --open flag to automatically open browser: npm run dev -- --open
```

### Type Checking
```bash
# Run type checking once
npm run check

# Run type checking in watch mode
npm run check:watch
```

### Build for Production
```bash
npm run build
# Creates optimized production build in .svelte-kit directory
```

### Preview Production Build
```bash
npm run preview
# Serves the production build locally
```

## Architecture

### Project Structure

- **`src/routes/`** - SvelteKit file-based routing
  - `+page.svelte` - Main landing page (assembles all sections)
  - `+layout.svelte` - Root layout (imports global styles, sets up favicon, renders children)

- **`src/lib/components/`** - Reusable Svelte components
  - Page sections: `navBar.svelte`, `header.svelte`, `why_moteeva.svelte`, `Why_chose_moteeva.svelte`, `behind_moteeva.svelte`, `faq.svelte`, `footer.svelte`
  - Reusable UI: `card.svelte`, `acordion.svelte`, `tag.svelte`, `commentCard.svelte`

- **`src/lib/assets/`** - Static assets
  - `images/` - PNG, SVG image files
  - `favicon.svg` - Site favicon

- **`src/app.css`** - Global styles (imports Tailwind CSS v4, custom font definitions)

### Key Technologies

- **SvelteKit 2** with **Svelte 5** - Uses new Svelte 5 syntax (`$props()`, `{@render children?.()}`)
- **TypeScript** - Strict mode enabled
- **Tailwind CSS v4** - Via `@tailwindcss/vite` plugin (note: v4 uses different syntax than v3)
- **Vite** - Build tool and dev server
- **@iconify/svelte** - Icon library

### Styling Approach

- Uses **Tailwind CSS v4** (configured via `@theme` directive in CSS)
- Custom fonts: **Poppins** (sans-serif) and **Archivo Narrow** (display)
- Tailwind config extends with custom utilities (`bg-linear-46` gradient)
- Component styles use inline Tailwind classes

### Component Patterns

Components follow these patterns:
- Export props using `export let propName = defaultValue`
- Use lowercase naming for component files (e.g., `navBar.svelte`, `acordion.svelte`)
- Import assets directly from `$lib/assets/images/`
- Reactive state uses `let` variables with Svelte 5 reactivity
- Event handlers use `on:click={handler}` syntax

### Path Aliases

- **`$lib`** - Resolves to `src/lib/`
- Managed by SvelteKit configuration (no need to manually configure)

### Adapter Configuration

Uses `@sveltejs/adapter-auto` which automatically selects the appropriate adapter for the deployment environment.

## Important Notes

- This project is **not** initialized as a Git repository
- Uses Tailwind CSS **v4** - syntax differs from v3 (e.g., `@theme` directive, native CSS variables)
- Svelte 5 features are used - legacy Svelte 3/4 patterns may not work
- Components are written in French (labels, content)
- No testing framework is currently configured
