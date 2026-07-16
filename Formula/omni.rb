class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.1/omni_1.1.1_darwin_arm64.tar.gz"
      sha256 "7f17ac60f2829350424f58db5930f623eb46f8b4cbd2275b504feceb8e02ad44"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.1/omni_1.1.1_darwin_amd64.tar.gz"
      sha256 "31b5e7a8e7c86e700671defb5c7ad83f2bfea241ff4e5aef7fd0d1400e5205b9"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.1.1/omni_1.1.1_linux_arm64.tar.gz"
        sha256 "76d9a4a4e08a767c6850d50f97e385b893378000706500b2151ea6e460d69be4"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.1/omni_1.1.1_linux_amd64.tar.gz"
      sha256 "eb3ecbb7bdbcd34a99570db93c2f9fafbf9d1cacf1bfc077462815293a2d1a4a"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
