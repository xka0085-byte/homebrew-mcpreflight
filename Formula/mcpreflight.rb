class Mcpreflight < Formula
  desc "Read-only preflight checks for MCP and x402 endpoints"
  homepage "https://xka0085-byte.github.io/mcpreflight/"
  url "https://registry.npmjs.org/@eidonze/mcpreflight/-/mcpreflight-0.6.1.tgz"
  sha256 "a1d59146a6656ce2431b0ef613b912089132d6755e2904533d1a60119cba5808"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpreflight --version")
  end
end
