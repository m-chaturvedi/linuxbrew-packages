class Oh-my-zsh < Formula
  desc "Installs VIFM"
  url "git@github.com:ohmyzsh/ohmyzsh.git", :using => :git, :tag => "master"

  def install
    system "/bin/bash", "tools/install.sh"
  end
end

