cask 'font-corporate-logo-m' do
  version "202202"
  sha256 '7c7a2281e9ef0d5b34bf327bcea7e520f8515b5dbe1d3091f4c77935a2eeb9bd'

  url "https://github.com/gishi-yama/homebrew-gy/raw/master/corpgo-m-ver2-font_#{version}.zip"
  name 'Corporate Logo Bold'
  homepage 'https://logotype.jp/corporate-logo-font-dl.html'

  font 'corpgo-m-ver2-font_202202/Corporate-Logo-Medium-ver2.otf'
end
