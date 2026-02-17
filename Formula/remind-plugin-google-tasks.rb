class RemindPluginGoogleTasks < Formula
  desc "Google Tasks plugin for Remind CLI"
  homepage "https://github.com/hamzaplojovic/remind"
  url "https://files.pythonhosted.org/packages/source/r/remind-plugin-google-tasks/remind-plugin-google-tasks-0.1.0.tar.gz"
  sha256 "a0639845b9bc81734712b89b9003a84cc4b001718e857005b60462f5bdfb9c0d"
  license "MIT"

  depends_on "python@3.12"
  depends_on "remind-plugin-base"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"python", "-c", "from remind_plugin_google_tasks import GoogleTasksPlugin; print('OK')"
  end
end
