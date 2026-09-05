class TmuxSessionPicker < Formula
  desc "Interactive picker for tmuxinator projects"
  homepage "https://github.com/schinwald/tmux-session-picker"
  url "https://github.com/schinwald/tmux-session-picker/releases/download/v0.1.3/tmux-session-picker-darwin-universal.tar.gz"
  sha256 "775669cd2c5c271eab74cc58d29dadacafd1161368a3ff70c33f85b669d1305f"
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
