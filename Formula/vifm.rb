class Vifm < Formula
  desc "Installs VIFM"
  url "git@github.com:vifm/vifm.git",
    :using => :git,
    :branch => "master",
    :tag => "v0.11"

  version "0.11"

  def install
    system "touch", "data/vifm-help.txt"
    system "autoreconf", "-f", "-i"
    system "./configure", "--prefix=#{prefix}", "--with-gtk=false"
    system "make", "-j", Hardware::CPU.cores.to_s
    system "make", "install"
  end
end


