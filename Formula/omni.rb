class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.1/omni_1.2.1_darwin_arm64.tar.gz"
      sha256 "f6860025b46c7894e6ad459cdbfbf8b8a8520920ddc72195e488e3ea9bc475f3"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.1/omni_1.2.1_darwin_amd64.tar.gz"
      sha256 "8d930835abbfe083494849ed5d136564641470de51643602cde23ad3e97fddb4"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.2.1/omni_1.2.1_linux_arm64.tar.gz"
        sha256 "916ca7d206bb1bfab1213862cd4102671426933faa2adbf8b42d6a0c18d37653"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.1/omni_1.2.1_linux_amd64.tar.gz"
      sha256 "f707380f4a62e4f1e5bac9b5d9d716fdbc9f642d97933b7c032ab63e447294e3"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
