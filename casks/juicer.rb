cask "juicer" do
  version "1.0.0"
  sha256 "8d17728918f039f1a0e41312c2834a37faf8348f9d408358e2815c17296bab21"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.0.0/Juicer.zip"
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
