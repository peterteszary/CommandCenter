## Git Commands
clone repository
```
git clone https://github.com/peterteszary/gitpractice.git
```
List files (hidden files as well)
```
la
```
List the files and directories in a given directory
```
ls -la:
```
Show changes
```
git status
```
Add all files to tracking
```
git add .
```
Commit with a message (-m stands for message)
```
git commit -m "New Commit" -m "some description"
```
Generate SSH key
```
ssh-keygen -t rsa -b 4096 -C "peterteszary@gmail.com"
```
List the keys
```
ls | grep githubkey
```
Show the key value
```
cat githubkey.pub
```
Push to the repo's main branch
```
git push origin master
```
Pull the main branch
```
git pull origin main
```
Push the changes to the main repository
```
git push -u origin main
```
Initialize folder
```
git init
```
To check the branch that we are in
```
git branch
```
Create and switch to a new branch
```
git checkout -b newbranchname
```
Merging two branches together
```
git merge newbranchname
```
Show the differences
```
git diff nameofthebranch
```
This pulls the master branch
```
git pull origin master
```
Back to the master branch
```
git checkout master
```
 This deletes the specific branch (branchname)
```
git branch -d branchname
```
 Unstage the readme.md file

```
git reset readme.md
```
A temporary place for the changes without committing
```
stach = temp
```
