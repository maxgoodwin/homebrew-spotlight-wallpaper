class SpotlightWallpaper < Formula
  desc "Menu bar app: real Windows Spotlight daily wallpapers on macOS, with photo info"
  homepage "https://github.com/maxgoodwin/spotlight-wallpaper"
  url "https://github.com/maxgoodwin/spotlight-wallpaper/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "80baa72a16b7384bb9dc2eae0da5066f702fdedeb331d17af8526dc28ce6cf20"
  license "GPL-3.0-or-later"

  depends_on macos: :sonoma

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
