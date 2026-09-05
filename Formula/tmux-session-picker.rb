class TmuxSessionPicker < Formula
  desc "Interactive picker for tmuxinator projects"
  homepage "https://github.com/schinwald/tmux-session-picker"
  url "https://github.com/schinwald/tmux-session-picker/releases/download/v0.1.0/tmux-session-picker-darwin-universal.tar.gz"
  sha256 "80595f279f99e34f6f7c733715daa4eb0d94d9fe869290ff56652b04280a6836"
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
