cask 'font-yasashisa-antique' do
  version :latest
  sha256 'd21a86ba53522dff39b90fe78417dec34eaa29dc8798b2b78009d64fc7c482c2'

  # flop.sakura.ne.jp/font/fontna-op was verified as official when first introduced to the cask
  url 'http://flop.sakura.ne.jp/font/fontna-op/YasashisaAntiqueFont.zip'
  name 'YasashisaAntique'
  homepage 'http://www.fontna.com/'

  font 'YasashisaAntiqueFont/07YasashisaAntique.otf'
end
