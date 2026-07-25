class GitClonepath < Formula
  desc "Clone hosted Git repositories into deterministic paths"
  homepage "https://github.com/nkaewam/git-clonepath"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.2/git-clonepath_0.1.2_darwin_arm64.tar.gz"
      sha256 "5ab607f2aa2a4cdf9a505ae0337ffe86a47f4e7a473af1e01a4b70b9eafbb0fc"
    end

    on_intel do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.2/git-clonepath_0.1.2_darwin_amd64.tar.gz"
      sha256 "e1fe4ca07439f580307bef12fbef22e48ec491aef35e2742dd4e7769e0ee5c58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.2/git-clonepath_0.1.2_linux_arm64.tar.gz"
      sha256 "414ed6ed55d4ced4905a7612a086399759e110499eec1a6493dceb396870b65b"
    end

    on_intel do
      url "https://github.com/nkaewam/git-clonepath/releases/download/v0.1.2/git-clonepath_0.1.2_linux_amd64.tar.gz"
      sha256 "b604adc00e1aac74bf179e8be196cd1cdd81b836fd66996d8fd9b7464ab39928"
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
