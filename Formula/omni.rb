class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.7/omni_1.0.7_darwin_arm64.tar.gz"
      sha256 "bd569edaf92bcf22fb32d3a6c7195085824ec6f2281a07a3e9dc834cc66e587c"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.7/omni_1.0.7_darwin_amd64.tar.gz"
      sha256 "db636bd0615b573a0840da673b083323322b7ddabb01aa8e17edc1b8d5de2bce"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.7/omni_1.0.7_linux_arm64.tar.gz"
        sha256 "e8741aa8af873050ae1df4422894495854daee52f99ee300fa2d8fe7cf91f5ff"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.7/omni_1.0.7_linux_amd64.tar.gz"
      sha256 "2e888b505d22ef906f997f2f5014d905ba7c2c77c9ada6886c3bc2aea18aa065"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
