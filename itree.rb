class Itree < Formula
  desc "Interactively navigable version of `tree`, built in Rust"
  homepage "https://github.com/sashaweiss/itree"
  url "https://github.com/sashaweiss/itree/archive/0.1.1.tar.gz"
  sha256 "ea201fd702ca6b786a153300b36e5d511b276326ed81a13c0b31235b8cc16d7a"
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
