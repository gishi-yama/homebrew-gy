cask 'myukkurivoice' do
  version '0.6.9'
  sha256 '3fe382a6c056722eff856ad63b92eed14006adf8ad5398a069a95109000e5c5a'

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
