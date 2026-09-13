cask 'font-corporate-logo-m' do
  version "3"
  sha256 'e81c3286e7a58c4c01245b88cef3bd9f5a4675da12cd29f09f3953ba6ef8431a'

  url "https://logotype.jp/wp-content/uploads/2022/10/Corporate-Logo-Medium-ver#{version}.zip"
  name 'Corporate Logo Medium ver3'
  homepage 'https://logotype.jp/corporate-logo-font-dl.html'

  font "Corporate-Logo-Medium-ver#{version}/Corporate-Logo-Medium-ver#{version}.otf"

end
