# homebrew-tap

Homebrew casks for three open-source guitar amp plug-ins (VST3, AU, CLAP and a standalone app). Add and trust the tap once (Homebrew needs both: it won't install from a tap that hasn't been added explicitly), then install any of them:

```
brew tap clayshentrup/tap
brew trust clayshentrup/tap
```

| Amp | Install | Listen |
|---|---|---|
| **Hanwell**: one continuous British amp voice, clean to cranked | `brew install --cask clayshentrup/tap/hanwell` | [samples](https://clayshentrup.github.io/hanwell/#samples) |
| **Kintsugi**: three clean amps with chorus, echoes and hall | `brew install --cask clayshentrup/tap/kintsugi` | [samples](https://clayshentrup.github.io/kintsugi/#samples) |
| **Unterholz UH-20**: a JFET preamp, clean and lead | `brew install --cask clayshentrup/tap/unterholz-uh20` | [samples](https://clayshentrup.github.io/unterholz-uh20/#samples) |

Each cask runs the amp's own installer package, which puts the plug-ins in `/Library/Audio/Plug-Ins` and the app in `/Applications`; Homebrew asks for your password once. `brew uninstall --cask <name>` removes everything it installed. The casks follow each amp's latest GitHub release (checked daily).
