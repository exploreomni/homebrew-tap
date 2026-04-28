class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.3/omni_1.0.3_darwin_arm64.tar.gz"
      sha256 "8aef41fc57a7b27c4419d9552f069b033fb9fe94814b194ebcb29294775851f7"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.3/omni_1.0.3_darwin_amd64.tar.gz"
      sha256 "74aebc0318937b52c151ff2f9cc187a2b5216fee00aea0318e35d79f90328cd0"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.3/omni_1.0.3_linux_arm64.tar.gz"
        sha256 "0c290107ffd7954f2ed94f2d9efe62acd43400966a3b84b76537c814e1a74e31"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.3/omni_1.0.3_linux_amd64.tar.gz"
      sha256 "f7bf4ff86c1ad4f0b1149e5fa116721c1cb01b921848c0be185b677d6655fdbd"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
