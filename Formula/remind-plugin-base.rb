class RemindPluginBase < Formula
  desc "Base package for Remind plugins"
  homepage "https://github.com/hamzaplojovic/remind"
  url "https://files.pythonhosted.org/packages/source/r/remind-plugin-base/remind-plugin-base-0.1.0.tar.gz"
  sha256 "137cfddc4f919f417cd01e4ccb28b329b0f9e1a678e010a97281554cb60ae29a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"python", "-c", "from remind_plugin_base import BasePlugin; print('OK')"
  end
end
