# Find file with contents
find spec -name *.*|xargs grep "pattern"
#
grep -rnw spec -e "pattern"
grep -rnw spec -e "ResourceHelpers::PARTNERS"

grep -rl -e before_action .
grep -rL -e before_action .
grep -rn -e before_action . 
grep -rn    before_action .

   -i, --ignore-case
   -R, --recursive
   -r, --recursive   
   -l, --files-with-matches   
   -L, --files-without-match
   -n, --line-number
   -w
   --word-regexp
       Select only those lines containing matches that form whole words.
       The test is that the matching substring must either be at the beginning of
       the line, or preceded by a non-word constituent character. Similarly, it
       must be either at the end of the line or followed by a non-word constituent
       character. Word-constituent characters are letters, digits, and the underscore.

# Find and replace in current directory, mac
Linux:
grep -rl 'original_text' . | xargs sed -i 's/original_text/new_text/g'

Mac:
grep -rl 'original_text' . | xargs sed -i '' -e 's/original_text/new_text/g'
