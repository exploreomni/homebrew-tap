class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.0/omni_1.2.0_darwin_arm64.tar.gz"
      sha256 "159d15444d471a9e8d9e7a0210d6f6714621230f7c76de7f55187b7c5d8d7dae"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.0/omni_1.2.0_darwin_amd64.tar.gz"
      sha256 "370867d17028c83a2d27e9ddc11198ddac87890c3ed8ed0f0311dd38ab400716"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.2.0/omni_1.2.0_linux_arm64.tar.gz"
        sha256 "bffe541cdf7b8890bd931e657564bc8cc0f2ab3d0dbbc2ba9a013f8b0dbe562f"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.0/omni_1.2.0_linux_amd64.tar.gz"
      sha256 "aa4089ba4f4dd4b2a25dd6e8e5f0c2338d20e7a86e7882c049af6a2edecfb294"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
