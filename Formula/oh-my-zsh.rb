class OhMyZsh < Formula
  desc "Installs Oh My ZSH"
  url "git@github.com:ohmyzsh/ohmyzsh.git",
    :using => :git,
    :branch => "master",
    :revision => "9a9f3831925432fdf4352c24a002506a06d329c1"

  version "9a9f38"

  def install
    system "/bin/bash", "tools/install.sh", "--keep-zshrc", "--unattended"
  end
end
