cask 'nndd+dmc' do
  version '3.0.11'
  sha256 '0e2461344f6afd6ded213cdc0e80c4a4462abcac35ef72424ca5f89e276020a3'

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
