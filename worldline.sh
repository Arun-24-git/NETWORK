

if [ $# -ne 2 ]; then
  echo "Syntax: $0 <file> <word to delete>"
  exit 1
fi

file="$1"
word="$2"

if grep -qw "$word" "$file"; then
  # Create a temporary file without lines containing the word
  grep -wv "$word" "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
  echo "Word '$word' was removed from '$file'."
else
  echo "Error: the word '$word' was not found in '$file'."
fi

exit 0
