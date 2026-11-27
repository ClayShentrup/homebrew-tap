cask "kintsugi" do
  version "1.0.2"
  sha256 "3e5d5df0cf297f06b61e6c15c0f239eaff3fbbcbb5217cb586cd3c2fbdb15eda"

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
