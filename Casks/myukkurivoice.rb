cask 'myukkurivoice' do
  version '0.3.22'
  sha256 '87f2974d7cd158a1fd3308222257db1b342557392f942358efde49b5a15a85f5'

  url "https://github.com/taku-o/myukkurivoice/releases/download/#{version}/myukkurivoice-darwin-x64.zip"
  name 'MYukkuriVoice'
  homepage 'https://github.com/taku-o/myukkurivoice'

  app 'myukkurivoice-darwin-x64'

  zap delete: [
	'~/Library/Application Support/myukkurivoice',
	'~/Library/Logs/myukkurivoice',
	'~/Library/Preferences/com.electron.myukkurivoice.helper.plist',
	'~/Library/Preferences/com.electron.myukkurivoice.plist',
	'~/Library/Saved Application State/com.electron.myukkurivoice.savedState'
              ]

end
