cask "lumen" do
  version "1.4.0"
  sha256 "5517f4c084cad05cb9c34f247d80ef42bd26f40685739bdee8eca2face40036f"

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
