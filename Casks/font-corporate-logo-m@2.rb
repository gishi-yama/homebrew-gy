cask 'font-corporate-logo-m@2' do
  version "202202"
  sha256 '44b377ad1d3e9d865639ff5d89afaa483c2472601b20264128659b45260f9b5a'

  url "https://logotype.jp/wp-content/uploads/2022/02/corpgo-m-ver2-font_#{version}.zip"
  name 'Corporate Logo Medium ver2'
  homepage 'https://logotype.jp/corporate-logo-font-dl-old-v2.html'

  font "corpgo-m-ver2-font_#{version}/Corporate-Logo-Medium-ver2.otf"

end
