cask "hoardless" do
  version "1.12.0"
  sha256 "7d3008522d064b4346a50a012d9439df3522bb21141d4bc33aef0ca4f59a06da"

  url "https://downloads.hoardless.app/Hoardless-#{version}.dmg"
  name "Hoardless"
  desc "Disk space analyzer and cleaner that previews every removal"
  homepage "https://hoardless.app/"

  livecheck do
    url "https://downloads.hoardless.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Hoardless.app"

  zap trash: [
    "~/.hoardless",
    "~/Library/Application Support/app.hoardless.Hoardless",
    "~/Library/Caches/app.hoardless.Hoardless",
    "~/Library/HTTPStorages/app.hoardless.Hoardless",
    "~/Library/Preferences/app.hoardless.Hoardless.plist",
  ]
end
