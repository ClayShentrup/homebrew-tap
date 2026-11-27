# homebrew-tap

Homebrew casks for three open-source guitar amp plug-ins (VST3, AU, CLAP and a standalone app). Trust the tap once, then install any of them:

```
brew trust clayshentrup/tap
```

| Amp | Install | Listen |
|---|---|---|
| **Hanwell**: a 50-watt EL34 amp in the Marshall line | `brew install --cask clayshentrup/tap/hanwell` | [samples](https://clayshentrup.github.io/hanwell/#samples) |
| **Kintsugi**: three clean amps with chorus, echoes and hall | `brew install --cask clayshentrup/tap/kintsugi` | [samples](https://clayshentrup.github.io/kintsugi/#samples) |
| **Unterholz UH-20**: a JFET preamp, clean and lead | `brew install --cask clayshentrup/tap/unterholz-uh20` | [samples](https://clayshentrup.github.io/unterholz-uh20/#samples) |

Each cask runs the amp's own installer package, which puts the plug-ins in `/Library/Audio/Plug-Ins` and the app in `/Applications`; Homebrew asks for your password once. `brew uninstall --cask <name>` removes everything it installed. The casks follow each amp's latest GitHub release (checked daily).
