class Itex < Formula
  desc "Tool to start a latex project"
  homepage ""
  url "https://github.com/oneElectron/itex/archive/refs/tags/v1.3.4.tar.gz"
  sha256 "e64b25dd50c1076e3ff9ae6c4c564be73334b52e3c761f3405c76550e9934363"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    mkdir("#{prefix}/etc")
    mkdir("#{prefix}/etc/itex")
    cp_r("./itex-templates", "#{prefix}/etc/itex/itex-templates")
    system "cargo", "install", "--no-default-features", "--path", ".", "--root", prefix.to_s
  end

  test do
    system "true"
  end
end
