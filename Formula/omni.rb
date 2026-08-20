class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.2/omni_1.1.2_darwin_arm64.tar.gz"
      sha256 "793af4ce7aef3843cb0f8e01132c3e2d55d3f9c6471db16ee42806e2665c3467"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.2/omni_1.1.2_darwin_amd64.tar.gz"
      sha256 "477411f92f3e1c52ab7bc556c156d141f27ac651f73b5a13c306d02d545f6954"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.1.2/omni_1.1.2_linux_arm64.tar.gz"
        sha256 "9b09a7a0647a29bb4a506045236d46e4cce00730248dc8e0c97690487f0d70b3"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.1.2/omni_1.1.2_linux_amd64.tar.gz"
      sha256 "4aab0cfc4e611b166fee4671dc61464247aad2431d7b7305dfb39621315f3d48"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
