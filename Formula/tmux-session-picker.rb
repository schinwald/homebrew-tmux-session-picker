class TmuxSessionPicker < Formula
  desc "Interactive picker for tmuxinator projects"
  homepage "https://github.com/schinwald/tmux-session-picker"
  url "https://github.com/schinwald/tmux-session-picker/releases/download/v0.1.4/tmux-session-picker-darwin-universal.tar.gz"
  sha256 "596dcf6fb6780e93f85862797d71899fc4f3427da2baf3db1f15fe7ffea8dee0"
  license "MIT"

  depends_on :macos

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "x86_64"
    bin.install "tmux-session-picker-darwin-#{arch}" => "tmux-session-picker"
  end

  test do
    assert_predicate bin/"tmux-session-picker", :executable?
  end
end
