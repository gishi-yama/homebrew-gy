cask 'font-corporate-logo-b@2' do
  version "202202"
  sha256 'e4725f153241022af54b1dba3a4cbc281bcd4c746f8a353baaaab70bd32e9afa'

  url "https://logotype.jp/wp-content/uploads/2022/02/corpgo-b-ver2-font_#{version}.zip"
  name 'Corporate Logo Bold ver2'
  homepage 'https://logotype.jp/corporate-logo-font-dl-old-v2.html'

  font "corpgo-b-ver2-font_#{version}/Corporate-Logo-Bold-ver2.otf"

end
