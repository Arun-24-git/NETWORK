if [ $# -ne 2 ]; then
  echo "Syntax: $0 <file> <word to delete>"
  exit 1
fi
file="$1"
word="$2"
if grep -qw "$word" "$file"; 
then
sed -i "/\b$word\b/d" "$file"
echo "word '$word' was  removed from '$file'."
else
echo "error to delete the word '$word' from '$file'."
fi

exit 0
