class OhMyZsh < Formula
  desc "Installs Oh My ZSH"
  url "git@github.com:ohmyzsh/ohmyzsh.git", :using => :git, :tag => "9a9f38319"

  def install
    system "/bin/bash", "tools/install.sh"
  end
end

