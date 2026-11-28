cask "unterholz-uh20" do
  version "0.4.1"
  sha256 "a10c333bffa64ce13a33d41a1fee674ecc6b018fba2b5d7fa3da5ee7792c26c8"

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
