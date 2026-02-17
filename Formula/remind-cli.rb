class RemindCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI reminder engine with desktop notifications and Claude Code integration"
  homepage "https://github.com/hamzaplojovic/remind"
  url "https://files.pythonhosted.org/packages/source/r/remind-cli/remind_cli-1.3.1.tar.gz"
  sha256 "b015eeca592b4d235649631dd99c5d3a2a9dd0e8647a4c7771fb12fbfc137025"
  version "1.3.1"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def post_install
    # Install the scheduler as a background service (optional)
    system bin/"remind", "scheduler", "--install" if File.exist?(bin/"remind")
  rescue SystemCallError
    # Installation may fail if not in a supported environment
  end

  test do
    system bin/"remind", "--version"
  end
end
