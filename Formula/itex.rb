class Itex < Formula
  desc "initialize a latex project"
  homepage ""
  url "https://github.com/oneElectron/itex/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "b343d2a31e7a146db852235a5bdff512d182f47616757da567fee7fb579a9d5a"
  license ""

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"

    system "cargo", "install", "--path", ".", "--root", "#{prefix}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test itex`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
