class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.0/omni_1.0.0_darwin_arm64.tar.gz"
      sha256 "8b93714f8d921abb599f6adbfdb1a0bf19ef77270a398e9541abc01b4d12f4fb"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.0/omni_1.0.0_darwin_amd64.tar.gz"
      sha256 "94d70111e0a11a0fa54a62196b2de76f4047e8a94accff0c85c50f2c8579ceec"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.0/omni_1.0.0_linux_arm64.tar.gz"
        sha256 "2071af3535b9ce7f99cad1995edd6a4730f1ab3d11f30dc246b9bebe5136f423"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.0/omni_1.0.0_linux_amd64.tar.gz"
      sha256 "c68527fce8ab9cad2ebaceca171dd052e41e8c1a863b36fd79c01e6bd1a3ce2d"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
