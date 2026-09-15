class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.3.1/omni_1.3.1_darwin_arm64.tar.gz"
      sha256 "3835aa54f1bf4addcb909d37cb3dacba83b163f7dcd091ffb476160b24bbdaca"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.3.1/omni_1.3.1_darwin_amd64.tar.gz"
      sha256 "3eb7703f98a083c14267c614e9a47efb3086a157ce3a2b10d3185f77c6ddafdc"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.3.1/omni_1.3.1_linux_arm64.tar.gz"
        sha256 "a86c7cffc06e25148e7292ead3e7afa9ffa265185152916c4c4daa4d05eff5c4"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.3.1/omni_1.3.1_linux_amd64.tar.gz"
      sha256 "4223e471354ae3074292d8ea6455192b829a99c729c6a1f89018055c15cf9bb4"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
