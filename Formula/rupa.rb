class Rupa < Formula
  desc "Convert, extract audio from, and compress media"
  homepage "https://github.com/haiigas/homebrew-rupa"
  url "https://github.com/haiigas/homebrew-rupa/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "8d86ee311679b4804e15a3f5800b6dbbc05396c21fbb96d9450537c431949a11"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "imagemagick"

  def install
    bin.install "bin/rupa"
  end

  test do
    assert_match "rupa 1.0.3", shell_output("#{bin}/rupa --version")
  end
end
