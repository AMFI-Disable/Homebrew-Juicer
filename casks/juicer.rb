cask "juicer" do
  version "1.1.2"
  sha256 "a00a1536a590540c6ae3c350ffab5989b2d4129e9b3d417830f9836bc2d4d3a3"

  url "https://github.com/amfi-disable/Juicer/releases/download/V1.1.2/Juicer.zip"
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
