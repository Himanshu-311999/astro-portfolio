// @ts-check
import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';
import vercel from "@astrojs/vercel"

// https://astro.build/config
export default defineConfig({
  integrations: [tailwind()],
  output: 'server',
  adapter: vercel(),

  build: {
    outDir: "dist", // Ensure this matches your deployment folder
  },
  trailingSlash: "never", // Or "always" depending on your preference
});