**Sparse checkout commands**
```
mkdir spearcheckout-test
```
```
cd spearcheckout-test
```
```
git init
```
```
git remote add -f origin <GIT REMOTE REPO URL>
```
```
git config core.sparseCheckout true
```
```
echo “Forráskód/SyncHubTheme" >> .git/info/sparse-checkout
```
```
git fetch --depth=1 origin main
```
```
git checkout main
```

**Most jön a szerkesztés, pl.: code .** `code .`

**Add new file pl.: Forráskód/SyncHubTheme/css/main.css** `touch Forráskód/SyncHubTheme/css/main.css`
**Majd mentés**
```
git add --sparse .
```
```
git commit -m "Add commit message”
```
```
git push origin main
```
