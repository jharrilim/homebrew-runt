VERSION = '0.1.0'
X86_64_SHA = 'af10de0aa89425274d41a68252996abe820b30526210e8cbdb6c621b84a4798a'
AARCH64_SHA = '6ccf27fac4d2c351ee3dbc82bf3b05e4855b7131d5435d67390736ed096ec39a'


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
