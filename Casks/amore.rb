cask "amore" do
  version "0.1,44"
  sha256 "8a833653ab80a9d836950a2e53a324531174fcaa744666b32bc1e89d35c60371"

  url "https://cdn.amore.computer/releases/com.lucas-fischer.Amore/#{version.csv.first}-#{version.csv.second}/Amore.dmg"
  name "Amore"
  desc "App distribution platform with Sparkle, code signing, and notarization"
  homepage "https://amore.computer/"

  livecheck do
    url "https://api.amore.computer/v1/apps/com.lucas-fischer.Amore/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Amore.app"
  binary "#{appdir}/Amore.app/Contents/MacOS/AmoreCLI", target: "amore"

  zap trash: [
    "~/Library/Application Support/Amore",
    "~/Library/Caches/com.lucas-fischer.Amore",
    "~/Library/HTTPStorages/com.lucas-fischer.Amore",
    "~/Library/Preferences/com.lucas-fischer.Amore.plist",
    "~/Library/WebKit/com.lucas-fischer.Amore",
  ]
end
