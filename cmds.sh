git init -b main
gh repo create my-tap-project \
     --private \
     --source=. \
     --remote=upstream \
     --readme=README.md
     --gitignore=visualstudio.gitignore


git remote -v
git add .

k create ns development-ns

tanzu apps workload create weatherforecast -f config/workload.yaml -n developmentns