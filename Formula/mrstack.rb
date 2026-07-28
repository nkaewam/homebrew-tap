class Mrstack < Formula
  desc "Discover, check, and restack a strict linear chain of GitLab merge requests"
  homepage "https://github.com/nkaewam/mrstack"
  version "0.3.0"

  depends_on "glab"

  on_macos do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.0/mrstack_0.3.0_darwin_arm64.tar.gz"
      sha256 "b91dd044c90d4966dcd6653606a5da6627e1a197b9ebbf4f78ce1227800a380a"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.0/mrstack_0.3.0_darwin_amd64.tar.gz"
      sha256 "163c670077c000920413691185b8ef7efae608f391610593ea861fc559c4756d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.0/mrstack_0.3.0_linux_arm64.tar.gz"
      sha256 "8708537e138f0cfa638893b9c7da88c088ea74d2c28e7c02a1eea9f7fe68f6f6"
    end

    on_intel do
      url "https://github.com/nkaewam/mrstack/releases/download/v0.3.0/mrstack_0.3.0_linux_amd64.tar.gz"
      sha256 "d0583e27d9c5948f9bce3b41fed1376a7d1e750071fff65694fb3d69483a990e"
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
