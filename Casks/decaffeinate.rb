cask "decaffeinate" do
  version "1.1.0"
  sha256 "fd2127f05f2c96f2a0d3f5ab5720c4a902975695239f7481a6fabacfbe6c14d5"

  url "https://github.com/harf-promo/decaffeinate/releases/download/v#{version}/Decaffeinate-#{version}.dmg"
  name "Decaffeinate"
  desc "Makes your Mac sleep — sees what's keeping it awake and forces a safe sleep"
  homepage "https://github.com/harf-promo/decaffeinate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Decaffeinate.app"

  zap trash: [
    "~/Library/Preferences/com.harfpromo.Decaffeinate.plist",
  ]
end
