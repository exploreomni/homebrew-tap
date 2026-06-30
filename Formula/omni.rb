class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.8/omni_1.0.8_darwin_arm64.tar.gz"
      sha256 "0c1b94d6b43ce9038f24a750cb79e41dfb6113a3918264036df30be9ffc61a5f"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.8/omni_1.0.8_darwin_amd64.tar.gz"
      sha256 "191635b60c339b91bcdc7dc6062dbd4ed5a4b9fff2bcae8f912ebb9b9f9abf92"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.8/omni_1.0.8_linux_arm64.tar.gz"
        sha256 "0b8a4c18459da22decd768b2b2ef253bd6b0826e4d7536d121b6b02c207f1d27"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.8/omni_1.0.8_linux_amd64.tar.gz"
      sha256 "146f1b541b31df65ca398af7c052fd41e10df2a5a63756aa823e56df0352cc9c"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
