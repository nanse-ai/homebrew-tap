# This file is generated automatically by the CLI release workflow.
# Do not edit by hand — changes will be overwritten on the next release.
class Nanse < Formula
  desc "nanse local tool connector — run AI agent tools on your machine"
  homepage "https://nanse.ai"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.3/nanse-aarch64-apple-darwin"
      sha256 "ddf0597c2f1730518aaae813b3a0b60aadd82126017fe624baffb5978c94b40f"
    else
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.3/nanse-x86_64-apple-darwin"
      sha256 "234bb725d0b298267c7a387c92a768238aad44776cc6af0b12946d09e7b34989"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.3/nanse-x86_64-unknown-linux-gnu"
      sha256 "e6835d97a323a47cf7746111fba225426e4a3e1fcd58d8e4b27e85167f85d49c"
    end
  end

  def install
    # The release asset is a bare binary named for its target triple, and Homebrew
    # stages it under that name — so install it under the name users type.
    bin.install Dir["nanse-*"].first => "nanse"
  end

  test do
    assert_match "nanse", shell_output("#{bin}/nanse --version")
  end
end
