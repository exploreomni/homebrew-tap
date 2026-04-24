class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.1/omni_1.0.1_darwin_arm64.tar.gz"
      sha256 "819b95365440ebe00975e77b2e7c0811d360347ffb0f8f7334b0a1801a08b691"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.1/omni_1.0.1_darwin_amd64.tar.gz"
      sha256 "e217915eb4797b778f554e95b87e42af721e6c0e833252a4b5ea970274546926"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.1/omni_1.0.1_linux_arm64.tar.gz"
        sha256 "f5ce4599882ec254b3863cd12caa4c746b06b61309228714af057c425d1b8189"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.1/omni_1.0.1_linux_amd64.tar.gz"
      sha256 "e25e9a0c52acd315b84bf9693e255e6cdec59b504e229c1b6575fa09e5a76252"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
