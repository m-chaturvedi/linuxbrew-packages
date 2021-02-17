class Nvim < Formula
  desc "Installs Nvim"
  homepage ""
  VERSION = "v0.4.4"
  url "https://github.com/neovim/neovim/releases/download/#{VERSION}/nvim-linux64.tar.gz"
  sha256 "aeedee626c15c2e7460934f090fd4811cbb0fbffcd3e1e35fc6f7c06a9252a4a"

  def install
    mv "bin", "share", "#{prefix}"
  end
end

