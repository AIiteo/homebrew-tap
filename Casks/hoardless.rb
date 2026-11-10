cask "hoardless" do
  version "1.11.0"
  sha256 "7cc34395d07c43bf9b68a88def297a652d3c7e679ae185b0d34a5b5dcea76713"

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
