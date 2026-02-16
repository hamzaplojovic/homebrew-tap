class Branchguard < Formula
  include Language::Python::Virtualenv

  desc "Clean up stale and merged git branches"
  homepage "https://github.com/hamzaplojovic/branchguard"
  url "https://files.pythonhosted.org/packages/source/b/branchguard/branchguard-0.1.0.tar.gz"
  sha256 "5dbbe97d7482e7091b0ee821e63d79c5b5ed3fdea7f24bdcb5ff3815c283ef61"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/branchguard --version")
  end
end
