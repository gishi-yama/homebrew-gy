cask 'docuworks-viewer-light' do
  version '9.1.0'
  sha256 'bfbdb6f36bb2b176cdba1bcc7c568077fe8b8d5beff4d6b23f9d1f8ef82edb19'

  url 'https://assets-fb.fujifilm.com/download/pub/exe/docuworks/1/dwvl910.dmg'
  name 'DocuWorks Viewer Light Mac JP'
  homepage 'https://www.fujifilm.com/fb/download/software/docuworks/download102'

  pkg 'DWViewerLight.pkg', allow_untrusted: true

  uninstall pkgutil: 'jp.co.fujixerox.docuworks.dwvlt'
end
