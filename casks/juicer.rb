cask "juicer" do
  version "1.0.1"
  sha256 "b1c45d99b54354138ef9c372655101412f422af8c3fd4451123b91d666234ea2"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.0.1-Beta/juicer.zip"
  name "Juicer"
  desc "Premium native macOS developer suite"
  homepage "https://github.com/amfi-disable/Juicer"

  app "Juicer.app"

  zap trash: [
    "~/Library/Application Support/com.even.juicer",
    "~/Library/Caches/com.even.juicer",
    "~/Library/Preferences/com.even.juicer.plist",
  ]
end
