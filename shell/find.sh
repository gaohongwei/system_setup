# Find file with contents
grep -rnw spec -e "pattern"
grep -rnw spec -e "ResourceHelpers::PARTNERS"

# 
find spec -name *.*|xargs grep "pattern"
