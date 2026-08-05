cask "juicer" do
  version "1.1.1"
  sha256 "f11bde60c204b04fc0a04333d72b9a2ab76ac4b9a4b238e77de9f9ce3fc396b8"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.1.1/Juicer.zip"
  name "Juicer"
  desc "Premium native macOS developer suite"
  homepage "https://github.com/amfi-disable/Juicer"

  app "Juicer.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Juicer.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.even.juicer",
    "~/Library/Caches/com.even.juicer",
    "~/Library/Preferences/com.even.juicer.plist",
  ]
end
