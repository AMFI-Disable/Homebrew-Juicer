cask "juicer" do
  version "1.1.0"
  sha256 "c5edb970c9fc7f6e7685ab4fb8e20052564a194ddaa8db568a3160f70342a92d"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.1.0/Juicer.zip"
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
