cask "juicer" do
  version "1.1.1"
  sha256 "5f5528b00f870f0a17b277b79a38eecf7cabace8faf21bd6bb0d1db5f5131e23"

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
