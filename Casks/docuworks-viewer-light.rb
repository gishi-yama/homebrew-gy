cask "docuworks-viewer-light" do
  version "9.1.3"
  sha256 "ab05641913433f0466880ba1c266284b9f480a6f568878d882006db74a8a2c80"

  url "https://asset-fb.fujifilm.com/www/fb/files/2026-03/71b5269c648d1634c105590f0060b568/dwvl913.dmg"
  name "DocuWorks Viewer Light Mac JP"
  homepage "https://www.fujifilm.com/fb/ja/support/software/document-management/docuworks/download/102"

  depends_on :macos

  pkg "DWViewerLight.pkg"

  uninstall pkgutil: "jp.co.fujixerox.docuworks.dwvlt"

  caveats do
    requires_rosetta
  end
end
