Set-PsReadLineOption -PredictionViewStyle ListView

oh-my-posh init pwsh --config "https://gist.githubusercontent.com/advancedben/56fc38eb5bfced51d0a166817d50c7ab/raw/68f52d2df1edf2c66d138d642d3f305dfd714287/omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons
