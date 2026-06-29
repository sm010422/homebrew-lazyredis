class Lazyredis < Formula
  desc "Lazygit-inspired terminal UI for Redis"
  homepage "https://github.com/sm010422/lazyredis"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.1/lazyredis_darwin_arm64.tar.gz"
      sha256 "0b87773c58aff05fd3a9c2ea695cd1b2aefdfb231217adcc98d07291701f9b5e"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.1/lazyredis_darwin_amd64.tar.gz"
      sha256 "51d292aba8e37f2cb637c092129b86635e1256cf4390073102dd1b1ec0467e47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.1/lazyredis_linux_arm64.tar.gz"
      sha256 "2701d6c91e2532e7c532c0f945f5078fe49136ce69de13aaf628379422232d18"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.1/lazyredis_linux_amd64.tar.gz"
      sha256 "fbbb72246cf7216212bf0937d639ef60321a0b204ba1a4d19b2786f7f29bc976"
    end
  end

  def install
    bin.install "lazyredis"
  end

  test do
    assert_predicate bin/"lazyredis", :exist?
  end
end
