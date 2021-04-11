class Xterm < Formula
  desc "Installs Xterm"
  homepage ""
  url "git@github.com:ThomasDickey/xterm-snapshots.git",
    :tag => "xterm-366",
    :using => :git,
    :revision => "424295c8ec01c9238b63a8f664f0e17d53a7f99f"

  VERSION = "366"

  def install
    system "./configure", "--prefix=#{prefix}"
    # TODO: Figure out why make is not working.
    system "remake", "-j", Hardware::CPU.cores.to_s
    system "make", "install"
  end
end

