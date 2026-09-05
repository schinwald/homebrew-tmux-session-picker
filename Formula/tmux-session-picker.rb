class TmuxSessionPicker < Formula
  desc "Interactive picker for tmuxinator projects"
  homepage "https://github.com/schinwald/tmux-session-picker"
  url "https://github.com/schinwald/tmux-session-picker/releases/download/v0.1.2/tmux-session-picker-darwin-universal.tar.gz"
  sha256 "f68ba73b5959d94f5b411dff7688bfc5ab1ea1f904546c9f3396e08e75f096a8"
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
