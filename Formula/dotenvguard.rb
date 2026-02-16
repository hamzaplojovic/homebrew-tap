class Dotenvguard < Formula
  desc "Catch missing .env variables before they crash production"
  homepage "https://github.com/hamzaplojovic/dotenvguard"
  url "https://files.pythonhosted.org/packages/dd/c3/91cf8d089fdb51a1c94c39b46ddf45da02b50ffa479edd0602682d714867/dotenvguard-0.1.0.tar.gz"
  sha256 "4c2b99b75e9b9d12754e0fb0e98560c724c353d14279894ef82a540879ed3949"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotenvguard --version")
  end
end