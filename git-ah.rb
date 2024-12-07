class GitAh < Formula
  desc "Git if it was made by Albert Heijn"
  homepage "https://github.com/parviziAH/git-ah"
  url "https://github.com/parviziAH/git-ah/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "841bf5348f0c147683a4a6aaa974e35ecd960a70087221082b66caa17b8d54b1"
  license "MIT"

  depends_on "python@3.9" # Or the version of Python your script requires

  def install
    bin.install "git-ah"
  end

  test do
    # Verify that the script runs and outputs the help message
    assert_match "Gebruik deze commando's", shell_output("#{bin}/git-ah klantenservice")
  end
end
