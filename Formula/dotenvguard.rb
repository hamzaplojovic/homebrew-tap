class Dotenvguard < Formula
  include Language::Python::Virtualenv

  desc "Catch missing .env variables before they crash production"
  homepage "https://github.com/hamzaplojovic/dotenvguard"
  url "https://files.pythonhosted.org/packages/7d/6f/881a2cfc184646d547cf01ffd3d400ae98546dc03c48bbe89868e07f1420/dotenvguard-0.1.1.tar.gz"
  sha256 "870a2abeca7080edb73e5604f0ef57c54dfc90476b4f16849cf30657de7b501c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotenvguard --version")
  end
end