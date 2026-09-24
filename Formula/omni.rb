class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.4.0/omni_1.4.0_darwin_arm64.tar.gz"
      sha256 "5b5632e03725ec444aad4aaef2c9359667e1a01380b4a7ebf439be238c41b5cb"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.4.0/omni_1.4.0_darwin_amd64.tar.gz"
      sha256 "a5a7ba247dcad806fbeebcce8c11ea17052926dffd58b2d6dcdadaf94d766f6c"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.4.0/omni_1.4.0_linux_arm64.tar.gz"
        sha256 "091b1b28c6a6ed6b822025cc2e5834aa1f4438dc058948a8ad7a5acee9fd18ad"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.4.0/omni_1.4.0_linux_amd64.tar.gz"
      sha256 "c0671377c3a1c6ba9cf5d773d1491f00b1abcce9b2dfcf50a29f1d828f58d90e"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
