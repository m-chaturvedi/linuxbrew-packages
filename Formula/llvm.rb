class Llvm < Formula
  desc "Installs LLVM"
  homepage ""
  VERSION = "11.0.0"
  PKG = "clang+llvm-11.0.0-x86_64-linux-gnu-ubuntu-20.04"

  url "https://github.com/llvm/llvm-project/releases/download/llvmorg-11.0.0/#{PKG}.tar.xz"
  sha256 "829f5fb0ebda1d8716464394f97d5475d465ddc7bea2879c0601316b611ff6db"

  def install
    libexec.install Dir["*"]
  end
end
