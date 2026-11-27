cask "kintsugi" do
  version "1.0.1"
  sha256 "7378f66ac6071891f5e45656ddb2dc3cc0666280dd0966853bde64305b22e248"

  url "https://github.com/ClayShentrup/kintsugi/releases/download/v#{version}/Kintsugi.pkg"
  name "Kintsugi"
  desc "Three clean guitar amps with chorus, echoes and hall"
  homepage "https://clayshentrup.github.io/kintsugi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Kintsugi.pkg"

  uninstall pkgutil: "com.kintsugi.amp.pkg"
end
