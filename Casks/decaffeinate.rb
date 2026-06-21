cask "decaffeinate" do
  version "1.5.2"
  sha256 "1fc4254730b767b086e238136b2f1fdc4a5835d8ef3de92f2fc6ec773d89ee47"

  url "https://github.com/harf-promo/decaffeinate/releases/download/v#{version}/Decaffeinate-#{version}.dmg"
  name "Decaffeinate"
  desc "Shows what's keeping the system awake and forces a safe sleep"
  homepage "https://github.com/harf-promo/decaffeinate"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Decaffeinate.app"

  zap trash: "~/Library/Preferences/com.harfpromo.Decaffeinate.plist"
end
