class Itex < Formula
  desc "Tool to start a latex project"
  homepage ""
  url "https://github.com/oneElectron/itex/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "f0ced3a110f52ff5fdec7a7af1a2ce996b747dd5dc44b4c950b0e80a1ba307ba"
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
