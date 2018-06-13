class Itree < Formula
  desc "Interactively navigable version of `tree`, built in Rust"
  homepage "https://github.com/sashaweiss/itree"
  url "https://github.com/sashaweiss/itree/archive/0.2.2.tar.gz"
  sha256 "a48aa3367a42a256a185cdaa53ed318e31c4c3219f5d36dc5f6cbe9e1152591c"
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
