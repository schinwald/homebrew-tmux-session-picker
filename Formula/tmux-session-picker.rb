class TmuxSessionPicker < Formula
  desc "Interactive picker for tmuxinator projects"
  homepage "https://github.com/schinwald/tmux-session-picker"
  url "https://github.com/schinwald/tmux-session-picker/releases/download/v0.1.1/tmux-session-picker-darwin-universal.tar.gz"
  sha256 "8e93f1f4c044580d8e79ff143a3388d5d377c47c82a47df8566b021bbc2ef73b"
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
