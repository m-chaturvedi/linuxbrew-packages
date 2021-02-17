class Foo < Formula
  desc "Installs TMUX"
  homepage ""
  url "https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz"
  sha256 "918f7220447bef33a1902d4faff05317afd9db4ae1c9971bef5c787ac6c88386"
  license "ISC"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
