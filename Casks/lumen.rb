cask "lumen" do
  version "1.1.0"
  sha256 "fe18d575f060e52229261bac6061d86d045a6eea447c50705a81f0b1631df227"

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
