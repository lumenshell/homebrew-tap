cask "lumen" do
  version "1.3.2"
  sha256 "2a77f3b940f8a661308109e598b64c42087918575de56d038ebb54be5c33b62f"

  url "https://github.com/lumenshell/lumen/releases/download/v#{version}/lumen-macos.zip"
  name "Lumen"
  desc "Fast, GPU-rendered terminal"
  homepage "https://lumenshell.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Lumen.app"
  binary "#{appdir}/Lumen.app/Contents/MacOS/lumen"

  zap trash: [
    "~/.config/lumen",
    "~/Library/Application Support/lumen",
  ]
end
