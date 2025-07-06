import adapter from "@sveltejs/adapter-static"
import { vitePreprocess } from "@sveltejs/vite-plugin-svelte"

/** @type {import('@sveltejs/kit').Config} */
const config = {
  // ref: https://svelte.dev/docs/kit/integrations
  preprocess: vitePreprocess(),
  kit: { adapter: adapter() }
}

export default config
