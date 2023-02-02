class Itex < Formula
  desc "Tool to start a latex project"
  homepage ""
  url "https://github.com/oneElectron/itex/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "cd1a4a08cade46d259f6cb98f2e5d4264971300a3475d05cc003145479f41802"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    cp_r("./itex-templates", "#{prefix}/")
    system "cargo", "install", "--path", ".", "--root", prefix.to_s
  end

  test do
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
