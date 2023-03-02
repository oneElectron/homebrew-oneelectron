class Itex < Formula
  desc "Tool to start a latex project"
  homepage ""
  url "https://github.com/oneElectron/itex/archive/refs/tags/v1.2.1.tar.gz"
  sha256 ""
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    mkdir("#{prefix}/etc")
    mkdir("#{prefix}/etc/itex")
    cp_r("./itex-templates", "#{prefix}/etc/itex/itex-templates")
    system "cargo", "install", "--no-default-features", "--path", ".", "--root", prefix.to_s
  end

  test do
    system "false"
  end
end
