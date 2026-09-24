# This file is generated automatically by the CLI release workflow.
# Do not edit by hand — changes will be overwritten on the next release.
class Nanse < Formula
  desc "nanse local tool connector — run AI agent tools on your machine"
  homepage "https://nanse.ai"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.2/nanse-aarch64-apple-darwin"
      sha256 "cfff215270822412c6d298a0bca0714c882622381401fc0396f4d863723a9e7b"
    else
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.2/nanse-x86_64-apple-darwin"
      sha256 "1b9e18d44156334c78da2da03cf2f3098afa3bc67228cf35d7ed822fdaf189fe"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.2/nanse-x86_64-unknown-linux-gnu"
      sha256 "df7953e78ec3edb408acc50110255e4908bb8bb49b0b3596ee100302253406b8"
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
