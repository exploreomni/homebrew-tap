class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.2/omni_1.2.2_darwin_arm64.tar.gz"
      sha256 "07bf419d836b8ae8a78faa82429300223ab287ed588d89fb547b4690e9e5d654"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.2/omni_1.2.2_darwin_amd64.tar.gz"
      sha256 "46cf8293cd9a6a721cdc6fa62558cf8f13700475877865d3d047126c7c95a20e"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.2.2/omni_1.2.2_linux_arm64.tar.gz"
        sha256 "7f4e053660232f7692c94a6494212443b83eefb87861a118bcb92d8fdeb966e5"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.2.2/omni_1.2.2_linux_amd64.tar.gz"
      sha256 "d7f6aed27f826993ed3dca72d704bd0a1e6352cc6929675f6705a1f82c717fae"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
