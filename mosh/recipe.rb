class Ruby193 < FPM::Cookery::Recipe
  description 'Mosh mobile shell (centos)'

  name 'mosh'
  version '1:1.2.4'
  revision 0
  homepage 'http://mosh.mit.edu/#getting'
  source 'http://mosh.mit.edu/mosh-1.2.4.tar.gz'
  sha256 'e74d0d323226046e402dd469a176075fc2013b69b0e67cea49762c957175df46'

  section 'interpreters'

  build_depends 'protobuf-compiler', 'protobuf-devel', 'zlib-devel',
                'openssl-devel', 'ncurses-devel', 'libutempter-devel'

  depends 'protobuf', 'ncurses', 'openssl', 'zlib', 'libutempter',
          'perl-IO-Tty'

  def build
    configure :prefix => prefix
    make
  end

  def install
    make :install, 'DESTDIR' => destdir
  end
end
