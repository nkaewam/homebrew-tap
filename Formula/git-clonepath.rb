class GitClonepath < Formula
  desc "Clone hosted Git repositories into deterministic paths"
  homepage "https://github.com/nkaewam/git-clonepath"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.1/git-clonepath_0.1.1_darwin_arm64.tar.gz"
      sha256 "1d20119208473fd36f21fb1df8b82bb80097189c9e1666c7e056a93066e2ef84"
    end

    on_intel do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.1/git-clonepath_0.1.1_darwin_amd64.tar.gz"
      sha256 "83a93803a6b6c5a4731b481dc41f4f5da01a6cd044e1df35b02d492f3725b303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.1/git-clonepath_0.1.1_linux_arm64.tar.gz"
      sha256 "65186c79e7f892ea9391fed7c96c8a44dc5c3306b1299734617239dbee29b780"
    end

    on_intel do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.1/git-clonepath_0.1.1_linux_amd64.tar.gz"
      sha256 "75e51e3f20f2c174db073388473871daccde177bb60dc5d8fe5b764a67043529"
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
