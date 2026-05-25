require "language/node"

class ClashKit < Formula
  desc "A command-line interface for managing Clash configurations, subscriptions, and proxies"
  homepage "https://github.com/wangrongding/clash-kit"
  url "https://registry.npmjs.org/clash-kit/-/clash-kit-1.2.1.tgz"
  sha256 "6347def79c56d8189553456b357110f214c66b8d75d51e91f5c6adc6184ed63b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/ck", "--version"
  end
end
