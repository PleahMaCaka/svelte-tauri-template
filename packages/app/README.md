# Svelte Tauri Template

Svelte Tauri Template with DaisyUI and modern toolchains without any annoying boilerplate codes.


## Stacks

- [Svelte](https://svelte.dev/) ([adapter-static](https://kit.svelte.dev/docs/adapter-static) for [Tauri](https://tauri.app/))
- [DaisyUI](https://daisyui.com/) ([Tailwind CSS](https://tailwindcss.com/))
- [Iconify](https://iconify.design/)
- [Tauri](https://tauri.app/) - Cross-platform Desktop & Mobile App
- [Nix Flake](https://nixos.wiki/wiki/Flakes)
- [BiomeJS](https://biomejs.dev/) - Formatting & Linting
- [Lefthook](https://lefthook.js.org/) - Git Hooks
- GitHub Actions - Build Bun/Rust with Cache


## Getting Started

Download [Nix](https://nixos.org/download/) on your machine, then enable Flakes.

Click `use this template` button on the top right of this page.

```bash
nix develop # enter development environment
bun install # install dependencies

bun dev # run SvelteKit dev server only

tauri dev # run desktop app

tauri android init # init android project
tauri android dev # recommended `adb connect` before running or open emulator

bun format # format & lint by BiomeJS
```


## LICENSE

[MIT LICENSE](./LICENSE)
