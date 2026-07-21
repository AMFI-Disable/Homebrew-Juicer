cask "juicer" do
  version "1.0.1"
  sha256 "c27771f04837746ac53ff132cb5f1f96c382accf8bea81290ec0ac07c058d851"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.0.1/juicer.zip"
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
