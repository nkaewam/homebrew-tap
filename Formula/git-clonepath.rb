class GitClonepath < Formula
  desc "Clone hosted Git repositories into deterministic paths"
  homepage "https://github.com/nkaewam/git-clonepath"
  url "https://github.com/nkaewam/git-clonepath/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3abcde28c861646e286aa5247f760ce2424b4476ee5d2f522aec8e3e7f15edcc"
  head "https://github.com/nkaewam/git-clonepath.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build",
           *std_go_args(output: bin/"git-clonepath", ldflags: "-s -w"),
           "./cmd/git-clonepath"
  end

  test do
    assert_match "usage: git clonepath",
                 shell_output("#{bin}/git-clonepath 2>&1", 2)
  end
end