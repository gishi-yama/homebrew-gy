cask 'docuworks-viewer-light' do
  version '9.1.1'
  sha256 '6258277b375e09e0703a0af6746e9a476df5613bb1f3bfb6f7303cb8c71c8578'

  url 'https://assets-fb.fujifilm.com/download/pub/exe/docuworks/1/dwvl911.dmg'
  name 'DocuWorks Viewer Light Mac JP'
  homepage 'https://www.fujifilm.com/fb/download/software/docuworks/download102'

  pkg 'DWViewerLight.pkg', allow_untrusted: true

  uninstall pkgutil: 'jp.co.fujixerox.docuworks.dwvlt'
end
