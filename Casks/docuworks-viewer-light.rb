cask 'docuworks-viewer-light' do
  version '8.0.0'
  sha256 '52d019747a657dcd0e5c182c2b9d634a98adcadd9a84493cfdd77c2ae3722b82'

  url 'http://download.fujixerox.co.jp/pub/exe/docuworks/DWVL800.dmg'
  name 'DocuWorks Viewer Light Mac JP'
  homepage 'https://www.fujixerox.co.jp/download/software/docuworks/download103/index.html'

  pkg "DWViewerLight.pkg"
  
  uninstall pkgutil: 'com.fujixerox.docuworks.dwvl'
end
