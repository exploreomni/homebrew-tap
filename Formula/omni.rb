class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.3.0/omni_1.3.0_darwin_arm64.tar.gz"
      sha256 "2b053cf1cdf5379312cf90226f7f53e0597f3bee469b684e3b8be05f40bcff84"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.3.0/omni_1.3.0_darwin_amd64.tar.gz"
      sha256 "9831d61daa69308775561fbf2b7f5d8bac56448dbda57a7691f2b9718f1f1c1d"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.3.0/omni_1.3.0_linux_arm64.tar.gz"
        sha256 "dc649ece54832bbfd5b82a9edf646d1b492d31bb8a00dc712b7e1ac60495d0ed"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.3.0/omni_1.3.0_linux_amd64.tar.gz"
      sha256 "cdb66b8e457e4128f8f73b9f711448822dc5ef096f323b3372177caf8dc0af55"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
