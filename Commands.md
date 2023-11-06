git clone https://github.com/peterteszary/gitpractice.git   : clone repository
la : List files (hidden files as well)
ls -la: 
git status: show the changes
git add . : add all files to tracking
git commit -m "New Commit" -m "some description" : commit with a message (-m stands for message)
ssh-keygen -t rsa -b 4096 -C "peterteszary@gmail.com" : generate SSH key
ls | grep githubkey : list the keys
cat githubkey.pub : show the key value
git push origin master : push to the repo's main branch
git pull origin main : pull the main branch
git push -u origin main : push the changes to the main repository
git init : initialize folder
git branch : to check the branch that we are in
git checkout -b newbranchname : create and switch to a new branch