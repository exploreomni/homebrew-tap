class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.2/omni_1.0.2_darwin_arm64.tar.gz"
      sha256 "26347b7e0248cfc5811c31e0a3879ccfc95e86547f890ee4b3048b1fa04af473"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.2/omni_1.0.2_darwin_amd64.tar.gz"
      sha256 "bd40db90097f5cb80487f6f8a41b00277b922110ef9eab030d122f24a35d2ae5"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.2/omni_1.0.2_linux_arm64.tar.gz"
        sha256 "aa911c9e6e25c879d543a90b5e2502a2d27aa57d33ac179e6a030a7177359751"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.2/omni_1.0.2_linux_amd64.tar.gz"
      sha256 "e6a3cb2df0a13ad8aba2182e94a16bf21436f0fbf23763e7bf9a0c2ce334827f"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
