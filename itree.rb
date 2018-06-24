class Itree < Formula
  desc "Interactively navigable version of `tree`, built in Rust"
  homepage "https://github.com/sashaweiss/itree"
  url "https://github.com/sashaweiss/itree/archive/0.3.1.tar.gz"
  sha256 "3d6930c4644f96668e0dcf5c13bafd67a3aad28d38fa78dd995cf5e35e233da8"
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
