class Rupa < Formula
  desc "Convert, extract audio from, and compress media"
  homepage "https://github.com/haiigas/homebrew-rupa"
  url "https://github.com/haiigas/homebrew-rupa/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "723573d408367f0b19c77747927f193bad9b0d46a8da6653d6d474090ffbfaf9"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "imagemagick"

  def install
    bin.install "bin/rupa"
  end

  test do
    assert_match "rupa 1.0.2", shell_output("#{bin}/rupa --version")
  end
end
