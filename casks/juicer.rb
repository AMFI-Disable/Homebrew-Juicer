cask "juicer" do
  version "1.0.3-Alpha"
  sha256 "78cf93dd5073339bbab49b244f099391e5aec01f36ca76f1024e03b592026630"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.0.3-Alpha/Juicer.zip"
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
