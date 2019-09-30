class VimPlug < Formula
  desc "Minimalist Vim Plugin Manager"
  homepage "https://github.com/junegunn/vim-plug"
  url "https://github.com/junegunn/vim-plug/archive/0.10.0.zip"
  sha256 "340fb6c41cfd0e2f2c97af5b1f93c7ba8988f4bb9e94e5ecc14c484dc1fd0364"

  def install
    system "install -m 755 -d #{prefix}/share/vim/vimfiles/autoload"
    system "install -m 644 plug.vim #{prefix}/share/vim/vimfiles/autoload/plug.vim"
    system "install -m 755 -d #{prefix}/share/doc/vim-plug"
    system "install -m 644 LICENSE README.md doc/plug.txt #{prefix}/share/doc/vim-plug"
  end

  test do
    system "false"
  end
end
