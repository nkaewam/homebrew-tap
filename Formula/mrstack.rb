class Mrstack < Formula
  desc "Discover, check, and restack a strict linear chain of GitLab merge requests"
  homepage "https://github.com/nkaewam/mrstack"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.1.0/mrstack_0.1.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.1.0/mrstack_0.1.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.1.0/mrstack_0.1.0_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.1.0/mrstack_0.1.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  depends_on "glab"

  def install
    bin.install "mrstack"
  end

  test do
    assert_match "mrstack: a command is required",
                 shell_output("#{bin}/mrstack 2>&1", 2)
  end
end
