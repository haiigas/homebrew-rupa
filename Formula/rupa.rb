class Rupa < Formula
  desc "Convert, extract audio from, and compress media"
  homepage "https://github.com/haiigas/homebrew-rupa"
  url "https://github.com/haiigas/homebrew-rupa/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "imagemagick"

  def install
    bin.install "bin/rupa"
  end

  test do
    assert_match "rupa 1.0.0", shell_output("#{bin}/rupa --version")
  end
end
