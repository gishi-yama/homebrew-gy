cask 'flic' do
  version '1.0.4'
  sha256 'c4245d04cdb7df235f2f98dca321ef26e9b3963c2519bce6fbab24792bbb73c4'

  url "https://misc-scl-cdn.s3.amazonaws.com/Flic.#{version}.dmg"
  name 'Flic'
  homepage 'https://flic.io/mac-app/'

  app 'Flic.app'

  uninstall pkgutil: 'com.shortcutlabs.FlicMac|com.shortcutlabs.FlicMac.*|com.shortcutlabs.fliclibMac'

end
