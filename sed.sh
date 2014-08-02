
Add a line at 2nd line
sed -i "2iresources  :users" $fname

Delete line
sed -i -e "/devise_for/d" $fname
