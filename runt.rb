VERSION = '0.2.0'
X86_64_SHA = '76f7a0f2257c5365098289cbd07ff9b0ee5b340e8a8c04d1d5a40bbb6b1b676a'
AARCH64_SHA = '05173c5bec40cba79a98482cf3fe89a31fd9bead6e0fde3c4452a2810c8a69c1'


class Runt < Formula
  desc "runt - a simple polyglot task runner"
  homepage "https://github.com/jharrilim/runt"
  version VERSION

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jharrilim/runt/releases/download/#{VERSION}/runt-v#{VERSION}-x86_64-apple-darwin.tar.gz"
      sha256 X86_64_SHA
    else
      url "https://github.com/jharrilim/runt/releases/download/#{VERSION}/runt-v#{VERSION}-aarch64-apple-darwin.tar.gz"
      sha256 AARCH64_SHA
    end
  end

  def install
    bin.install "runt"
  end

  test do
    system bin / "runt", "--version"
  end
end
