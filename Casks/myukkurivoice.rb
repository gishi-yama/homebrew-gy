cask 'myukkurivoice' do
  version '0.5.0'
  sha256 '18d3be936bf0e63dd852e915ad0c11ec9eef1de21cd6ae7bb8956619add52be5'

  url "https://github.com/taku-o/myukkurivoice/releases/download/#{version}/myukkurivoice-darwin-x64.zip"
  appcast 'https://github.com/taku-o/myukkurivoice/releases.atom',
          checkpoint: '9d19e5522913fd36e8ff1aa60db88e1a44ae2817ca230c48e0e08cd7075f20f3'

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
