# Svelte Tauri Template

Svelte Tauri Template with DaisyUI and modern toolchains without annoying boilerplate codes.


## Stacks

- [Svelte](https://svelte.dev/) ([adapter-static](https://kit.svelte.dev/docs/adapter-static) for [Tauri](https://tauri.app/))
- [DaisyUI](https://daisyui.com/) ([Tailwind CSS](https://tailwindcss.com/))
- [Iconify](https://iconify.design/)
- [Tauri](https://tauri.app/) - Cross-platform desktop / mobile app
- [Nix Flake](https://nixos.wiki/wiki/Flakes)
- [BiomeJS](https://biomejs.dev/) - formatting and linting
- [Lefthook](https://lefthook.js.org/) - Git hooks
- GitHub Actions - Bun/Rust Cache included


## Getting Started

Download [Nix](https://nixos.org/download/) first if you are not on NixOS.

Click `use this template` button on the top right of this page.

```bash
nix develop # enter development environment
bun install # install dependencies
tauri dev # run desktop app
tauri android init # init android project
tauri android dev # recommended `adb connect` before running or open emulator
bun format # format code by BiomeJS
```


## LICENSE

[MIT LICENSE](./LICENSE)
