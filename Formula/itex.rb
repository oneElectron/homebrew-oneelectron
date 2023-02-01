class Itex < Formula
  desc "Tool to start a latex project"
  homepage ""
  url "https://github.com/oneElectron/itex/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "eca9ec24bb44ff7ab19b31e5205a52e98324c98f3481b3b0bc06d97c9d95ce18"
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
