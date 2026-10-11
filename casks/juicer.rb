cask "juicer" do
  version "1.1.2"
  sha256 "964410ac33764133288e3148a8dc06db2ab719c243d6f75ee6451fa0f2cfafbe"

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
