# This file is generated automatically by the CLI release workflow.
# Do not edit by hand — changes will be overwritten on the next release.
class Nanse < Formula
  desc "nanse local tool connector — run AI agent tools on your machine"
  homepage "https://nanse.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.1/nanse-aarch64-apple-darwin"
      sha256 "95816307f8dca569a67b07ecaee62c0656e918d84309631d71527a81e9a70b38"
    else
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.1/nanse-x86_64-apple-darwin"
      sha256 "b4caaf8f7da60ddde89efb20f3449014846c10b0f1b5a86407a1ae2abdb068aa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nanse-ai/cli/releases/download/cli-v0.1.1/nanse-x86_64-unknown-linux-gnu"
      sha256 "0c0f9986ebd18a1bc99e4fa3fed88e547adef74c946bbc05a7e5f029a1e82646"
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
