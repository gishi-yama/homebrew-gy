cask 'nndd+dmc' do
  version '2.7.1'
  sha256 'e863af20d7442553fc711170557c59f2eff10709c44076754daf4dc00a891c5c'

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
