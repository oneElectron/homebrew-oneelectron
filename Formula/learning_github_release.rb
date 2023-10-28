class LearningGithubRelease < Formula
  if Hardware::CPU.type == :arm
    url "https://github.com/oneElectron/learning_github_releases/releases/download/v0.1.3/learning_github_release-aarch64-apple-darwin.tar.xz"
    sha256 "9da6c38fc63a8fabe7844145cfbecc67b453bf96c5f815015041edfe2d1113e8"
  else
    url "https://github.com/oneElectron/learning_github_releases/releases/download/v0.1.3/learning_github_release-x86_64-apple-darwin.tar.xz"
    sha256 "0ea8bb108d56cc2883fd29af3e726d34339ae40e6b4b3297a34e7d9a2c856ef6"
  end
  version "0.1.3"

  def install
    bin.install "learning_github_release"

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
