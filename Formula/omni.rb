class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.4/omni_1.0.4_darwin_arm64.tar.gz"
      sha256 "fb36ebd3c5ec5288635ed9c0afeaa5655dbd4739148d59db6a843f5a5ddac763"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.4/omni_1.0.4_darwin_amd64.tar.gz"
      sha256 "d3b6d57f095821c7f58b1d5e22b701191295398419befa7e401eba8afdea922a"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.4/omni_1.0.4_linux_arm64.tar.gz"
        sha256 "7325062ee59d8571193777c135a5a33de0a5a0d3474047f413e68461c8ab27e3"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.4/omni_1.0.4_linux_amd64.tar.gz"
      sha256 "fc0b419dcd914d3f34b15f728535ac599956fdc3ba39e37f53909880e7c8c894"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
