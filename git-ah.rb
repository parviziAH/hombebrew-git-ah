class GitAh < Formula
  desc "Git if it was made by Albert Heijn"
  homepage "https://github.com/ParviziAH/git-ah"
  url "https://github.com/ParviziAH/git-ah/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
