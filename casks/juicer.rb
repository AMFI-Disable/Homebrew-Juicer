cask "juicer" do
  version "1.0.3"
  sha256 "c5edb970c9fc7f6e7685ab4fb8e20052564a194ddaa8db568a3160f70342a92d"

  url "https://github.com/AMFI-Disable/Juicer/releases/download/V1.1.3/Juicer-V1.1.3.zip"
  name "Juicer"
  desc "Premium native macOS developer suite"
  homepage "https://github.com/AMFI-Disable/Juicer"

  app "Juicer.app"

  postflight do
    system_command "xattr", args: ["-cr", "#{appdir}/Juicer.app"]
  end

  caveats <<~EOS
    Juicer is an unnotarized open-source build.
    If macOS Gatekeeper prevents opening on launch:
      sudo xattr -r -c /Applications/Juicer.app
    Or allow it via System Settings > Privacy & Security > Open Anyway.
  EOS

  zap trash: [
    "~/Library/Application Support/com.even.juicer",
    "~/Library/Caches/com.even.juicer",
    "~/Library/Preferences/com.even.juicer.plist",
  ]
end
