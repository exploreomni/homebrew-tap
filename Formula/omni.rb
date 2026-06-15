class Omni < Formula
  desc "Command-line tool for the Omni API"
  homepage "https://github.com/exploreomni/cli"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.6/omni_1.0.6_darwin_arm64.tar.gz"
      sha256 "bcdbae7550ebbd27a00361a72c8fd47849e3dfd32696defb045b56db809a9fd6"
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.6/omni_1.0.6_darwin_amd64.tar.gz"
      sha256 "ad560350bfe9f4ad76cef685e6041abe7872b443859beac08b56abce6f54e663"
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exploreomni/cli/releases/download/v1.0.6/omni_1.0.6_linux_arm64.tar.gz"
        sha256 "7bb9d4481d851b401ec7ee7e1693fb48d6497143f2b31b72dcd2464fc73f4fe5"
      end
    end

    on_intel do
      url "https://github.com/exploreomni/cli/releases/download/v1.0.6/omni_1.0.6_linux_amd64.tar.gz"
      sha256 "21978853bd3f74788434aca60a70900f0f44f98ebf546963594aa2421dc73da9"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system bin/"omni", "--help"
  end
end
