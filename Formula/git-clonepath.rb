class GitClonepath < Formula
  desc "Clone hosted Git repositories into deterministic paths"
  homepage "https://github.com/nkaewam/git-clonepath"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.3/git-clonepath_0.1.3_darwin_arm64.tar.gz"
      sha256 "fb3d4f8b8ead6e75c190e4449f9553b8b44f9c7a37c953e3b88edc174e72d836"
    end

    on_intel do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.3/git-clonepath_0.1.3_darwin_amd64.tar.gz"
      sha256 "75484734456c252047f920b7f38cc2a2e3e219b8bb05bb113b51b964c2e1e47c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.3/git-clonepath_0.1.3_linux_arm64.tar.gz"
      sha256 "4962a83c1b2d481a39fe6f0d0e6f1c134f5c7888722a178d852f337eeb105d82"
    end

    on_intel do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.3/git-clonepath_0.1.3_linux_amd64.tar.gz"
      sha256 "c47e0a6806f29ae71f6e1993a1b12feded2177f9b6b8030bb9bad1bd01d2aa9e"
    end
  end

  def install
    bin.install "git-clonepath"
  end

  test do
    assert_match "usage: git clonepath",
                 shell_output("#{bin}/git-clonepath 2>&1", 2)
  end
end
