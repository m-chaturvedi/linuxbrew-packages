class Ccls < Formula
  desc "Installs CCLS"
  url "git@github.com:MaskRay/ccls.git",
    :using => :git,
    :tag => "0.20201219"

  version "0.20201219"

  def install
    mkdir "build" do
      system "cmake", *std_cmake_args, ".."
      system "make", "-j", Hardware::CPU.cores.to_s
      system "make", "install"
    end
  end
end

