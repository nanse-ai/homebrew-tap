# This file is generated automatically by the CLI release workflow.
# Do not edit by hand — changes will be overwritten on the next release.
class Nanse < Formula
  desc "nanse local tool connector — run AI agent tools on your machine"
  homepage "https://nanse.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nanse-ai/nanse/releases/download/cli-v0.1.0/nanse-aarch64-apple-darwin"
      sha256 "b1715fbdb1c50e6143253f71bc7516f6a336aabde60f20a28fce279fa0be4522"
    else
      url "https://github.com/nanse-ai/nanse/releases/download/cli-v0.1.0/nanse-x86_64-apple-darwin"
      sha256 "5b5e56824f06791c045a175c1ef079c070d4d32f24931e8e99715415f67d520d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nanse-ai/nanse/releases/download/cli-v0.1.0/nanse-x86_64-unknown-linux-gnu"
      sha256 "3ad2c6c9b22ed51a5ede53fa0868de15cf7fd417b5fa0f69fc22acb70f528f77"
    end
  end

  def install
    bin.install "nanse"
  end

  test do
    assert_match "nanse", shell_output("#{bin}/nanse --version")
  end
end
