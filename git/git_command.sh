
git push origin master --usernamessh -p port_number remote_host


git clone https://gaohongwei@github.com/gaohongwei/rails_topics
git clone https://github.com/gaohongwei/rails_topics
git clone git@gitcom.com:gaohongwei/rails_topics.git
git clone wei-git:gaohongwei/rails_topics.git https://github.com/gaohongwei/rails_topics
pan-git:foo/foo.git  # logs in with account foo

Checkout specific files from another branch
git checkout development -- Gemfile
git checkout development -- Gemfile.lock


echo "# abc" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/gaohongwei/abc.git
#git remote add git@gitwei.com/rails_topics.git
git push -u origin master

###### Apply patch
git apply name-of-file.patch
