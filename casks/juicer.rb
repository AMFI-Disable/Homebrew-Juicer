cask "juicer" do
  version "1.0.1"
  sha256 "70974bbcf601553c24b1a47f86c82149651b3a3507282f666ceacbecf80b5b8e"

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
