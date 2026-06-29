class Lazyredis < Formula
  desc "Lazygit-inspired terminal UI for Redis"
  homepage "https://github.com/sm010422/lazyredis"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.2/lazyredis_darwin_arm64.tar.gz"
      sha256 "05f0125f1d4f4d8ca6d74fd707b085feacf7ed20af3f98f7e29e3fdb6442cb81"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.2/lazyredis_darwin_amd64.tar.gz"
      sha256 "b804fe389ece1aee8d23b149c86050a6fb7f60850611e93826f223ea614b10ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.2/lazyredis_linux_arm64.tar.gz"
      sha256 "cc168af0c772196e5dadba285da49c25c47ebbb5e375c5ef60d9508f66f8611f"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.4.2/lazyredis_linux_amd64.tar.gz"
      sha256 "d63b03435028efa3fc3ae8baaf25a45f08f6bf2f1e8b0b22690a5c8b0873f096"
    end
  end

  def install
    bin.install "lazyredis"
  end

  test do
    assert_predicate bin/"lazyredis", :exist?
  end
end
