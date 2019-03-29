cask 'oki_c332dnw' do
  version '1.1.1'
  sha256 'a9b07daa21962025aa08268fd04f15639bddafe015b491eb3ae97676f63cc210'

  url 'https://www.oki.com/jp/printing/download/MC573_PS_OSX_010101_104679.dmg'
  name 'OKI PS Driver'
  homepage 'https://www.oki.com/jp/printing/support/drivers-and-utilities/?id=46591401FZ01&tab=drivers-and-utilities&productCategory=color&sku=C332DNW&os=ab53&lang=ac1'

  pkg 'Installer for OSX.pkg'

  uninstall pkgutil: 'com.okidata.okiPostscriptDriver.OELnew.*'
end
