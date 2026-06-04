class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.5/omni_1.0.5_darwin_arm64.tar.gz"
      sha256 "cff56ad10dec94645a103fcb8431cf0e6d6522fc498eb9c5047fccb0061e3d6f"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.5/omni_1.0.5_darwin_amd64.tar.gz"
      sha256 "4444cd6f4f69cd123c0ea10c6abf6c2ce90cc516ac3f3a175e7407e056e542bb"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.5/omni_1.0.5_linux_arm64.tar.gz"
        sha256 "898e246180d6728388287d7cf8b947ed5717865a3cd06818dd383bfc7b003cbf"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.5/omni_1.0.5_linux_amd64.tar.gz"
      sha256 "85500ee96ab1398068edad880f1e8236724a0988b8f58e9e6cdd195961029e64"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
