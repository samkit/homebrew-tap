# samkit Homebrew Tap

A personal Homebrew tap for installing macOS applications and command-line utilities.

## Available Casks

| Cask | Description | Install Command |
| :--- | :--- | :--- |
| **[Droid Scout](https://github.com/samkit/droid-scout)** | Menu bar utility for Android device and ADB workflows | `brew install --cask samkit/tap/droid-scout` |

---

## Usage

To add this tap to your Homebrew installation, run:

```bash
brew tap samkit/tap
```

Once the tap is added, you can install any available casks:

```bash
brew install --cask droid-scout
```

### Note on Gatekeeper (macOS Security)

The `droid-scout` cask includes a `postflight` step that automatically removes the `com.apple.quarantine` attribute after installation. This allows the unsigned open-source build to launch normally after:

```bash
brew tap samkit/tap
brew install --cask samkit/tap/droid-scout
```

No `--no-quarantine` flag or manual `xattr` command is required for standard installs from the tap.

If you install the `.app` manually (e.g. from a release zip), you can still run:

```bash
xattr -d com.apple.quarantine "/Applications/Droid Scout.app"
```

### Updating Casks

To check for updates and upgrade your installed casks:

```bash
brew update
brew upgrade --cask droid-scout
```

---

## License

This tap is public and distributed under the MIT License. See the main project repositories for their respective licenses.