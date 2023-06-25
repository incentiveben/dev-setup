wsl --install --no-distribution

winget install --id 7zip.7zip -e
winget install --id Balsamiq.Wireframes -e
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

git config --global user.name "Ben Hinman"
git config --global user.email "{EMAIL_ADDRESS}"
git config --global core.editor notepad.exe

mkdir C:\repos
cd C:\repos
gh repo list {GITHUB_ORGANISATION_NAME} -L 1000 --json sshUrl | ConvertFrom-Json | foreach { git clone $_.sshUrl }