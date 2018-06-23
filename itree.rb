class Itree < Formula
  desc "Interactively navigable version of `tree`, built in Rust"
  homepage "https://github.com/sashaweiss/itree"
  url "https://github.com/sashaweiss/itree/archive/0.3.0.tar.gz"
  sha256 "5475547847abb3c3d40252ebac6109603c5a360756911651a30ffa68789e93cc"
  head "https://github.com/sashaweiss/itree.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix
  end

  test do
    # Since `itree` runs an interactive TUI, automatic testing of the binary
    # may be prohibitively complicated.
    system "#{bin}/itree", "--help"
  end
end
