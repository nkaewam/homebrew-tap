class Mrstack < Formula
  desc "Discover, check, and restack a strict linear chain of GitLab merge requests"
  homepage "https://github.com/nkaewam/mrstack"
  version "0.3.1"

  depends_on "glab"

  on_macos do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.1/mrstack_0.3.1_darwin_arm64.tar.gz"
      sha256 "5a4514af7f2be9a0b3ffdcb4ad2117e896d744d7b94c01a33b5067820f44209b"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.1/mrstack_0.3.1_darwin_amd64.tar.gz"
      sha256 "b9202718c24581b7ebdc630515fefbd98a806d79ed1f10b12d025d4bc82083a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.1/mrstack_0.3.1_linux_arm64.tar.gz"
      sha256 "a416585e9158a68895a220ae3a5869b4332aff935c5e55d018b9efaf3d423d75"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.1/mrstack_0.3.1_linux_amd64.tar.gz"
      sha256 "9f48b9caa4e2b21ebca598328020f63b23dddc257757a41a52baa8b59bd51029"
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
