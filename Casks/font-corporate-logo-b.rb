cask 'font-corporate-logo-b' do
  version "3"
  sha256 '0c964fd694a993505c0245012b1aa8e9ec0c24b765e27c548a13a8365bbac784'

  url "https://logotype.jp/wp-content/uploads/2022/10/Corporate-Logo-Bold-ver#{version}.zip"
  name 'Corporate Logo Bold ver3'
  homepage 'https://logotype.jp/corporate-logo-font-dl.html'

  font "Corporate-Logo-Bold-ver#{version}/Corporate-Logo-Bold-ver#{version}.otf"

end
