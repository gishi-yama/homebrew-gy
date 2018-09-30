cask 'nndd+dmc' do
  version '3.0.7'
  sha256 '78178cfdeb7d7a447fd7d6296c3e2fe1ad12cbbcd6a73e3f8a90b944c50496d6'

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
