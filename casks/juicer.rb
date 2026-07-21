cask "juicer" do
  version "1.0.1"
  sha256 "541de542d958f3685b3e8cb66c1045c83dcdf53b4ad8a56bc595f22d09bda4a4"

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
