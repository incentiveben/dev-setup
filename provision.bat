wsl --install --no-distribution

winget install --id 7zip.7zip -e
winget install --id Docker.DockerDesktop -e
winget install --id Git.Git -e
winget install --id GitHub.cli -e
winget install --id Google.Chrome -e
winget install --id JanDeDobbeleer.OhMyPosh -e
winget install --id JetBrains.Rider -e
winget install --id Microsoft.dotnet -e
winget install --id Microsoft.PowerShell -e
winget install --id Microsoft.PowerToys -e
winget install --id Microsoft.Teams -e
winget install --id Microsoft.VisualStudioCode -e
winget install --id OpenJS.NodeJS.LTS -e
winget install --id WinMerge.WinMerge -e

git config --global user.name "Ben Hinman"
git config --global user.email ""
git config --global core.editor notepad.exe

mkdir C:\repos