https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/

repo='https://abc' #
repo='git@' # ssh
git init
git add .
git commit -m "First commit"

Add repo
  git remote add origin $repo
Or reset repo
  git remote set-url origin $repo

git remote -v
git push -u origin master


git pull --allow-unrelated-histories
