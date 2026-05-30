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

Because Droid Scout is an open-source utility and is not signed/notarized with a paid Apple Developer certificate, macOS Gatekeeper may flag it as "damaged" upon launch. 

To install it safely and bypass quarantine transparently, run the installation with the Homebrew environment variable:

```bash
HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask droid-scout
```

*Alternatively, if already installed, you can manually remove the quarantine flag using:*
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