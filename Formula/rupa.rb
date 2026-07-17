class Rupa < Formula
  desc "Convert, extract audio from, and compress media"
  homepage "https://github.com/haiigas/homebrew-rupa"
  url "https://github.com/haiigas/homebrew-rupa/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "9b472ef3fdd8c0fc040ea5bff7c4c429895c69915a567137a31f888d6b7d04f9"
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
