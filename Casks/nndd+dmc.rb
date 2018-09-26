cask 'nndd+dmc' do
  version '2.8.6'
  sha256 'e9f38120f49c87ed884dc28a54923a427b7f61186aa12519619b80ec7ffa0b3a'

  url "https://github.com/SSW-SCIENTIFIC/NNDD/releases/download/v#{version}-Beta/NNDD_v#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/SSW-SCIENTIFIC/NNDD/releases.atom'
  name 'NNDD+DMC'
  homepage 'https://github.com/SSW-SCIENTIFIC/NNDD'

  depends_on cask: 'adobe-air'

  app 'NNDD+DMC.app'

  preflight do
    system_command staged_path.join('Install NNDD+DMC.app/Contents/MacOS/Install NNDD+DMC'),
                   args: ['-silent', '-eulaAccepted', '-location', staged_path]
  end
end
