class Rupa < Formula
  desc "Convert, extract audio from, and compress media"
  homepage "https://github.com/haiigas/homebrew-rupa"
  url "https://github.com/haiigas/homebrew-rupa/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3d1724c895c3c959f7b1403e03ba529cdb0b0637f00a7f20835a539de26de6a0"
  license "MIT"

  depends_on "ffmpeg"

  def install
    bin.install "bin/rupa"
  end

  test do
    assert_match "rupa 1.0.1", shell_output("#{bin}/rupa --version")
  end
end
