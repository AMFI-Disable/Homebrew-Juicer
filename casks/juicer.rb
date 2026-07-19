cask "juicer" do
  version "1.0.1"
  sha256 "da29c78f13fe38e38e2410d9474a658c303a80b0d64842466497eaef5d99ef43"

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
