class Mrstack < Formula
  desc "Discover, check, and restack a strict linear chain of GitLab merge requests"
  homepage "https://github.com/nkaewam/mrstack"
  version "0.2.1"

  depends_on "glab"

  on_macos do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.2.1/mrstack_0.2.1_darwin_arm64.tar.gz"
      sha256 "dbf9619a0448f0e0c6e02beea32d39d95daae3e2c2382e7b4ed8a89121406c29"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.2.1/mrstack_0.2.1_darwin_amd64.tar.gz"
      sha256 "50292a40510fde4873841861e5986736f27c6090a617523d84106ca31ade0113"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.2.1/mrstack_0.2.1_linux_arm64.tar.gz"
      sha256 "c61ad59d73dd4cc030154bba407e2ee0fe7e6af96f27958f133f6e2ffba2d469"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.2.1/mrstack_0.2.1_linux_amd64.tar.gz"
      sha256 "464469526a0c10e0506606f38ab54f4dcb3b6021a114faf33773156959910cc8"
    end
  end

  def install
    bin.install "mrstack"
  end

  test do
    assert_match "mrstack: a command is required",
                 shell_output("#{bin}/mrstack 2>&1", 2)
  end
end
