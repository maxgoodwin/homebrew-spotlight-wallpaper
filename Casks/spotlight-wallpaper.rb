cask "spotlight-wallpaper" do
  version "0.1.9"
  sha256 "208b5da81ac855eb3829bef30ee9746ef601c26ea19bac106b586a158f81efc1"

  url "https://github.com/maxgoodwin/spotlight-wallpaper/releases/download/v#{version}/Spotlight.Wallpaper.zip"
  name "Spotlight Wallpaper"
  desc "Menu bar app: real Windows Spotlight daily wallpapers, with photo info"
  homepage "https://github.com/maxgoodwin/spotlight-wallpaper"

  depends_on macos: :sonoma

  app "Spotlight Wallpaper.app"

  zap trash: [
    "~/Library/Application Support/spotlight-wallpaper",
    "~/Library/Preferences/com.maxgoodwin.SpotlightWallpaper.plist",
  ]
end
