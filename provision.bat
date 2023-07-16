wsl --install --no-distribution

winget install --id 7zip.7zip -e
winget install --id Balsamiq.Wireframes -e
winget install --id dandavison.delta -e
winget install --id Docker.DockerDesktop -e
winget install --id dotPDNLLC.paintdotnet -e
winget install --id Git.Git -e
winget install --id GitHub.cli -e
winget install --id Google.Chrome -e
winget install --id Hashicorp.Terraform -e
winget install --id JanDeDobbeleer.OhMyPosh -e
winget install --id JetBrains.Rider -e
winget install --id Microsoft.DotNet.Framework.DeveloperPack_4 -e
winget install --id Microsoft.DotNet.SDK.7 -e
winget install --id Microsoft.PowerShell -e
winget install --id Microsoft.PowerToys -e
winget install --id Microsoft.Teams -e
winget install --id Microsoft.VisualStudio.2022.BuildTools -e
winget install --id Microsoft.VisualStudioCode -e
winget install --id OpenJS.NodeJS.LTS -e
winget install --id Postman.Postman -e
winget install --id WinMerge.WinMerge -e

git config --global user.name "Ben Hinman"
git config --global user.email "{EMAIL_ADDRESS}"
git config --global format.pretty format:"%Cred%h %Cgreen%ar %Cblue%an%Creset %s%C(yellow)%d"
git config --global core.editor "code --wait"
git config --global diff.tool vscode
git config --global difftool.vscode.cmd "code --wait --diff $LOCAL $REMOTE"
git config --global merge.tool vscode
git config --global mergetool.vscode.cmd "code --wait $MERGED"

git config --global core.pager delta
git config --global interactive.diffFilter "delta --color-only"
git config --global delta.navigate true
git config --global merge.conflictstyle diff3
git config --global diff.colorMoved default

mkdir C:\repos
cd C:\repos
gh repo list {GITHUB_ORGANISATION_NAME} -L 1000 --json sshUrl | ConvertFrom-Json | foreach { git clone $_.sshUrl }
