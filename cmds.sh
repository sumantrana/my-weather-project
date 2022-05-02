git init -b main

gh repo create my-weather-project \
     --public \
     --source=. \
     --remote=upstream



git remote -v

git add .

git commit -m "Initial commit"

git push upstream main

k create ns development-ns

tanzu apps workload create weatherforecast -f config/workload.yaml -n developmentns