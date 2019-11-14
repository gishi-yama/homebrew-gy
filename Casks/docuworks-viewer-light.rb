cask 'docuworks-viewer-light' do
  version '9.0.0'
  sha256 'a42b8f66743a9338c2d4a87492678f24f22dafc4fc67fa76afca4d6d4b943e5c'

  url 'https://assets.fujixerox.co.jp/download/pub/exe/docuworks/1/dwvl900.dmg'
  name 'DocuWorks Viewer Light Mac JP'
  homepage 'https://www.fujixerox.co.jp/download/software/docuworks/download102'

  pkg 'DWViewerLight.pkg', allow_untrusted: true

  uninstall pkgutil: 'jp.co.fujixerox.docuworks.dwvlt'
end
