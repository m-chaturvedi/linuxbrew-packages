class Fzf < Formula
  desc "Installs Fzf"
  url "git@github.com:junegunn/fzf.git",
    :using => :git,
    :branch => "master",
    :revision => "6654239c94667fefb38d76cfc47b6abf5ced8149"

  version "0.25.1"

  def install
    system "/bin/bash", "install", "--key-bindings", "--completion",
      "--no-zsh", "--no-bash", "--no-update-rc"

    mv "bin", "#{prefix}"
    mv "man", "#{prefix}/share"
  end
end

