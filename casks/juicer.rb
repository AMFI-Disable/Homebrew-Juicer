cask "juicer" do
  version "1.0.1"
  sha256 "1c56a193559c47f535fcd73ff88cf873fb05d895ebe7e72f48e3df98b7296dff"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.0.1/juicer.zip"
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
