class SpotlightWallpaper < Formula
  desc "Menu bar app: real Windows Spotlight daily wallpapers on macOS, with photo info"
  homepage "https://github.com/maxgoodwin/spotlight-wallpaper"
  url "https://github.com/maxgoodwin/spotlight-wallpaper/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8f5b975b6fb53a0d652590672aff30d1c626b25cbfe93795901935a52b2b9759"
  license "GPL-3.0-or-later"

  depends_on macos: :sonoma
  depends_on xcode: ["15.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/spotlight-wallpaper"
  end

  service do
    run [opt_bin/"spotlight-wallpaper"]
    keep_alive true
    log_path var/"log/spotlight-wallpaper.log"
    error_log_path var/"log/spotlight-wallpaper.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spotlight-wallpaper --version")
  end
end
