class RemindCli < Formula
  desc "Smart CLI reminder engine with AI-powered suggestions"
  homepage "https://github.com/hamzaplojovic/remind"
  url "https://files.pythonhosted.org/packages/source/r/remind-cli/remind_cli-1.1.7.tar.gz"
  sha256 "33eb748d104715ce90ce5a4616275e11168bd8ece908aa9b726c18f96beac248"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remind --version", 2)
  end
end
