class Cronguard < Formula
  include Language::Python::Virtualenv

  desc "Wrap cron jobs with timing, output capture, and exit code tracking"
  homepage "https://github.com/hamzaplojovic/cronguard"
  url "https://files.pythonhosted.org/packages/source/c/cronguard/cronguard-0.1.0.tar.gz"
  sha256 "fd35f0b47f19a0c79865ab2007143a53797f2568b33cb6b0d26a7a2ac8ec7899"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cronguard --version")
  end
end
