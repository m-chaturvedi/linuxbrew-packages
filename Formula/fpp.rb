class Fpp < Formula
  desc "Installs Fpp"
  url "git@github.com:facebook/PathPicker.git",
    :using => :git,
    :branch => "master",
    :revision => "195f8502049c63fc2a45c7fd3d498257489ff076"

  version "195f850"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"fpp"
  end
end

