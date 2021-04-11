class Fd < Formula
  desc "Installs Nvim"
  homepage ""
  VERSION = "8.2.1"
  url "https://github.com/sharkdp/fd/releases/download/v8.2.1/fd_#{VERSION}_amd64.deb"
  sha256 "f3a949325f1893145ced2b269a67d5763af3bede435c40e3b85b29afdb78c3d2"

  def install
    mv "usr/bin", "#{prefix}"
    mv "usr/share", "#{prefix}"
  end
end

