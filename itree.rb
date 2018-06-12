class Itree < Formula
  desc "Interactively navigable version of `tree`, built in Rust"
  homepage "https://github.com/sashaweiss/itree"
  url "https://github.com/sashaweiss/itree/archive/0.1.2.tar.gz"
  sha256 "38fc7963189bf638aac29b2b91d3ae7be43a55c7f8f72af313e3fc654d006aa0"
  head "https://github.com/sashaweiss/itree.git"
  version "0.1.2"

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
