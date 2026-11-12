cask "lumen" do
  version "1.1.1"
  sha256 "5dc12497ea65b2b6dcd8a71f07f7e7103c340d24e6ee081d3a6e7682b70a1c6d"

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
