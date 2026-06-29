class Lazyredis < Formula
  desc "Lazygit-inspired terminal UI for Redis"
  homepage "https://github.com/sm010422/lazyredis"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.3/lazyredis_darwin_arm64.tar.gz"
      sha256 "0cb1cb319e6c8178d2abc84fc53b70b864fab3e18242f4a445cb85bfd549cbb4"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.3/lazyredis_darwin_amd64.tar.gz"
      sha256 "b964949e4dc4107ad516c49df2f5139fa7d3bd9b3476bdb642018526afc43947"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.3/lazyredis_linux_arm64.tar.gz"
      sha256 "a193698fd5141c08606699864613b76ecab468fd270670ee6aa6ad73688f1fbb"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.3/lazyredis_linux_amd64.tar.gz"
      sha256 "1b7973756cf022715f3094ececfb31fe9a5b1cf17605d0f6edf53f99ac32bdba"
    end
  end

  def install
    bin.install "lazyredis"
  end

  test do
    assert_predicate bin/"lazyredis", :exist?
  end
end
