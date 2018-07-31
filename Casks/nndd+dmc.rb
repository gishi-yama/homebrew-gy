cask 'nndd+dmc' do
  version '2.8.0'
  sha256 '9b342d1a62c5c5f68a7ce74810a1e0db3d20f23172c4499ed14f19e2fadd99ab'

  url "https://github.com/SSW-SCIENTIFIC/NNDD/releases/download/v#{version}-Alpha/NNDD_v#{version.dots_to_underscores}.dmg"
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
