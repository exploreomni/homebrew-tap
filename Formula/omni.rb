class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v0.1.4/omni_0.1.4_darwin_arm64.tar.gz"
      sha256 "d7048037ce17afaa861a64e7f54bcefb973daa3972a88af644bb664adb77256d"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v0.1.4/omni_0.1.4_darwin_amd64.tar.gz"
      sha256 "7f47fdcd0ad4283352414168de9f51af8dd1b4b42c36963e044743e783e34fc7"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v0.1.4/omni_0.1.4_linux_arm64.tar.gz"
        sha256 "301ddfacb11b23c88c83edb8f4bd530137a2f1ff1fffbcb5d7b49826991368ab"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v0.1.4/omni_0.1.4_linux_amd64.tar.gz"
      sha256 "5153c189fe9cebb1fdd0d0cec039e2a3b609cd76cf66121a29d189a4e5807d57"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
