cask "juicer" do
  version "1.0.2"
  sha256 "72404ec7adbfdb903e88f9cd14fd66342b0c5d8ac7f8e54c2a60b41e37341a50"

  url "https://github.com/amfi-disable/Juicer/releases/download/V#{version}/juicer.zip"
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
