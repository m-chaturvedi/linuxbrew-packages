class Nvim < Formula
  desc "Installs Nvim"
  homepage ""
  VERSION = "v0.4.4"
  url "https://github.com/neovim/neovim/releases/download/#{VERSION}/nvim-linux64.tar.gz"
  sha256 "aeedee626c15c2e7460934f090fd4811cbb0fbffcd3e1e35fc6f7c06a9252a4a"

  depends_on "m-chaturvedi/linuxbrew-packages/llvm" => :build

  def install
    mv "bin", "#{prefix}"
    mv "share", "#{prefix}"

    system "curl", "-fLo", "/home/chaturvedi/.local/share/nvim/site/autoload/plug.vim",
      "--create-dirs", "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

    system "nvim", "-c", "'PlugInstall'", "-c", "'qall'"
  end
end

