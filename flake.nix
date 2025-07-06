{
  description = "devshell for svelte tauri template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay.url = "github:oxalica/rust-overlay";
    android-nixpkgs.url = "github:tadfisher/android-nixpkgs";
  };

  nixConfig = {
    bash-prompt = "dev";
    bash-prompt-suffix = " > ";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      rust-overlay,
      android-nixpkgs,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ rust-overlay.overlays.default ];
          config = {
            android_sdk.accept_license = true;
            allowUnfree = true;
          };
        };
        rust = pkgs.rust-bin.stable.latest.default.override {
          targets = [
            "aarch64-linux-android"
            "armv7-linux-androideabi"
            "i686-linux-android"
            "x86_64-linux-android"
          ];
        };
        android = android-nixpkgs.sdk.${system};
        androidSdk = android-nixpkgs.sdk.${system} (
          sdkPkgs: with sdkPkgs; [
            build-tools-34-0-0
            platforms-android-34
            ndk-26-1-10909125
            cmdline-tools-latest
            platform-tools
            emulator
          ]
        );
      in
      {
        devShells.default = pkgs.mkShell {
          name = "svelte-tauri-template";
          # Tauri Prerequisities
          # See https://v2.tauri.app/start/prerequisites/#linux
          nativeBuildInputs = with pkgs; [
            pkg-config
            gobject-introspection
            cargo
            cargo-tauri
            nodejs
          ];

          buildInputs = with pkgs; [
            at-spi2-atk
            atkmm
            cairo
            gdk-pixbuf
            glib
            gtk3
            harfbuzz
            librsvg
            libsoup_3
            pango
            webkitgtk_4_1
            openssl
            rust
          ];

          packages =
            with pkgs;
            [
              coreutils
              nix
              bun
              jdk
            ]
            ++ [ androidSdk ];

          shellHook = ''
            export NDK_HOME=${androidSdk}/share/android-sdk/ndk/26.1.10909125
            alias tauri="bunx tauri"
            echo "Done! Happy Coding :)";
          '';
        };
      }
    );
}
