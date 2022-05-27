git init -b main

gh repo create my-weather-project \
     --public \
     --source=. \
     --remote=upstream



git remote -v

git branch -u upstream/main

git add .

git commit -m "Initial commit"

git push upstream main

k create ns development-ns


tanzu secret registry add registry-credentials --server buildservice.azurecr.io --username buildservice --password repopassword --namespace development-ns

tanzu apps workload create weatherforecast -f config/workload.yaml -n developmentns