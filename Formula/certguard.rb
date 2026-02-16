class Certguard < Formula
  include Language::Python::Virtualenv

  desc "Check SSL certificate expiry from the command line"
  homepage "https://github.com/hamzaplojovic/certguard"
  url "https://files.pythonhosted.org/packages/source/c/certguard/certguard-0.1.0.tar.gz"
  sha256 "42b89ffb4540cf7d3770c62cb49650b0d77ab0e38de3af177797e5044d16b88f"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/certguard --version")
  end
end
