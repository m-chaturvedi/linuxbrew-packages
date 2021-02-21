class Vifm < Formula
  desc "Installs VIFM"
  url "git@github.com:vifm/vifm.git", :using => :git, :tag => "v0.11"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "-j", Hardware::CPU.cores.to_s
    system "make", "install"
  end
end

