class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.0/omni_1.1.0_darwin_arm64.tar.gz"
      sha256 "094a33b22c9e92d341d6c10f20e04cc0ea0b801c4d4f09a5452b98d7bf6d146e"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.0/omni_1.1.0_darwin_amd64.tar.gz"
      sha256 "edd1fe1f933be2f33463a3bba63805b4126b40606cebc4bb8a291c09593015a5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.1.0/omni_1.1.0_linux_arm64.tar.gz"
        sha256 "a02fa975b6bd0e9af1edae3da16c9ab5f39ebc4fc6206d482c657b690f680751"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.0/omni_1.1.0_linux_amd64.tar.gz"
      sha256 "f8fbdcef060d85770e98697f08b0dd32f829ceb05976b559e8e0070a8242812b"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
