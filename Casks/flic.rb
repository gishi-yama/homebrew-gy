cask 'flic' do
  version '1.0.7'
  sha256 '5aa44b4cb6c3af182e5498d593f12b928e8088f43e318d705c33a8dda0aa0732'

  # s3.amazonaws.com/misc-scl-cdn was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/misc-scl-cdn/Flic.#{version}.zip"
  name 'Flic'
  homepage 'https://flic.io/mac-app/'

  app 'FlicMac Developer Distribution 2017-05-22 13-09-54/Flic.app'

  zap delete: [
                '~/Library/Application Scripts/com.shortcutlabs.FlicMac',
                '~/Library/Containers/com.shortcutlabs.FlicMac',
              ]
end
