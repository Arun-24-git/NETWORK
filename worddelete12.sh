if [ $# -ne 2 ]; then
  echo "Syntax: $0 <file> <word to delete>"
  exit 1
fi
sed -i "s/\b$2\b//g" "$1"
if [ $? -eq 0 ]; then
  echo "word '$2' was  removed from '$1'."
else
  echo "error to delete the word '$2' from '$1'."
fi

exit 0
