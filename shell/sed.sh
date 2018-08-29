
Add a line at 2nd line
sed -i "2iresources  :users" $fname

Delete line
sed -i -e "/devise_for/d" $fname

Add a line before the end of file
sed -i '$i get "/*url" => "application/pages#show", as: :page' $fname

Repalce a line
sed -e "s/.*node.name.*/node.name:154/g" $fname
Repalce a line inline
sed -i.bak 's/VERSION/$(VER)/' $fname

Replace with different strings
sed -i 's/foo/bar/g; s/baz/zab/g; s/Alice/Joan/g' $fname

Multiple repalce and pattern
sed  -e "s|[ \t]*\([a-zA-Z0-9]*\).*integer.*|\1:integer|g" \
     -e "s|[ \t]*\([a-zA-Z0-9]*\).*varchar.*|\1:string|g"  b.txt

Replace in folders
find . -type f -iname '*.py' -exec sed -i.bak 's/plt.show()/plt.savefig('zplot')/' "{}" +;
