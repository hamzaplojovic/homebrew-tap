class Dotenvguard < Formula
  include Language::Python::Virtualenv

  desc "Catch missing .env variables before they crash production"
  homepage "https://github.com/hamzaplojovic/dotenvguard"
  url "https://files.pythonhosted.org/packages/ce/ab/e2aea1a699d9b63b89bf30815f3c7180fd36b0d24b74d879864ca64f016f/dotenvguard-0.2.0.tar.gz"
  sha256 "bdde1f310fb4c1e701090c78d9c0ec25152f00037d675241a632274e1bed3da1"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotenvguard --version")
  end
end
