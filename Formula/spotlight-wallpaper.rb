class SpotlightWallpaper < Formula
  desc "Menu bar app: real Windows Spotlight daily wallpapers on macOS, with photo info"
  homepage "https://github.com/maxgoodwin/spotlight-wallpaper"
  url "https://github.com/maxgoodwin/spotlight-wallpaper/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "781b57f525ddd52ec05c319d54fb6a483a34044c7f5cc0ab652be6ba3fcbd1eb"
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
