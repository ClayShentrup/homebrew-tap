cask "unterholz-uh20" do
  version "0.1.1"
  sha256 "9660a119ab294ce6596f41f3e906d153e4d87f7073a11d3201c6b06a9e76fdbd"

  url "https://github.com/ClayShentrup/unterholz-uh20/releases/download/v#{version}/Unterholz-UH-20.pkg"
  name "Unterholz UH-20"
  desc "JFET guitar preamp with a studio clean channel and a lead channel"
  homepage "https://clayshentrup.github.io/unterholz-uh20/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "Unterholz-UH-20.pkg"

  uninstall pkgutil: "com.unterholz.uh20.pkg"
end
