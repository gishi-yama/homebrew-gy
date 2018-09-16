cask 'myukkurivoice' do
  version '0.6.10'
  sha256 'ce595d7e7a2409140be65617a616799aa642b21cac444b3aec5cc0cab8fc6d4a'

  url "https://github.com/taku-o/myukkurivoice/releases/download/#{version}/myukkurivoice-darwin-x64.zip"
  appcast 'https://github.com/taku-o/myukkurivoice/releases.atom'

  name 'MYukkuriVoice'
  homepage 'https://github.com/taku-o/myukkurivoice'

  app 'myukkurivoice-darwin-x64'

  zap delete: [
                '~/Library/Application Support/myukkurivoice',
                '~/Library/Logs/myukkurivoice',
                '~/Library/Preferences/com.electron.myukkurivoice.helper.plist',
                '~/Library/Preferences/com.electron.myukkurivoice.plist',
                '~/Library/Saved Application State/com.electron.myukkurivoice.savedState',
              ]
end
