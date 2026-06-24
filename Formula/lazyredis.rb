class Lazyredis < Formula
  desc "Lazygit-inspired terminal UI for Redis"
  homepage "https://github.com/sm010422/lazyredis"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.3.0/lazyredis_darwin_arm64.tar.gz"
      sha256 "60f829f41ad288ca147d147cb23b798c1c4e25189791484d2d733f6335970fa8"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.3.0/lazyredis_darwin_amd64.tar.gz"
      sha256 "58a25cc72a67f948505f89f9461ef22bd13d76bd4b4f518b13f17c50ad6464e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sm010422/lazyredis/releases/download/v0.3.0/lazyredis_linux_arm64.tar.gz"
      sha256 "87bf3c2351845cde19958a2877aabbb401c8d206b95fe585513a687bcaf7f544"
    else
      url "https://github.com/sm010422/lazyredis/releases/download/v0.3.0/lazyredis_linux_amd64.tar.gz"
      sha256 "c3c38a5087b2afffcabba40f63f29a2b545ad0e3978e948c4b8f8db52963bff9"
    end
  end

  def install
    bin.install "lazyredis"
  end

  test do
    # lazyredis requires a TTY, so just check the binary exists and runs
    assert_predicate bin/"lazyredis", :exist?
  end
end
