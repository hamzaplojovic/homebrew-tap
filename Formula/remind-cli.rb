class RemindCli < Formula
  include Language::Python::Virtualenv

  desc "AI-powered CLI reminder engine with desktop notifications and Claude Code integration"
  homepage "https://github.com/hamzaplojovic/remind"
  url "https://files.pythonhosted.org/packages/source/r/remind-cli/remind_cli-1.3.0.tar.gz"
  sha256 "28ef56542fa924e9c65f88d21118998413c151377a7655f05913a3dc2166acea"
  version "1.3.0"
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
