class Tmux < Formula
  desc "Installs TMUX"
  homepage ""
  url "https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz"
  sha256 "918f7220447bef33a1902d4faff05317afd9db4ae1c9971bef5c787ac6c88386"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "-j", Hardware::CPU.cores.to_s
    system "make", "install"
  end
end
