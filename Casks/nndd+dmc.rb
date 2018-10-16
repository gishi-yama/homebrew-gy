cask 'nndd+dmc' do
  version '3.0.8'
  sha256 'a8e329860f8f0162bb7e0ea72906354c3961f310ad98301b18957b91c39189b4'

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
