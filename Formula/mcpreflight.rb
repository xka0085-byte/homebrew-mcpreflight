class Mcpreflight < Formula
  desc "Read-only preflight checks for MCP and x402 endpoints"
  homepage "https://xka0085-byte.github.io/mcpreflight/"
  url "https://registry.npmjs.org/@eidonze/mcpreflight/-/mcpreflight-0.6.2.tgz"
  sha256 "ca57c618ac97525676bf0ef8169ecf1978a864a350a2f62a2046ed5ad41def2f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpreflight --version")
  end
end
