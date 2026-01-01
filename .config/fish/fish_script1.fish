#!/usr/bin/env fish

set MY_VAR "Hello World"
echo $MY_VAR

touch "file1.txt" file2.txt file3.txt

for file in *.txt
    echo "Processing $file"
end

set -l STRING "Fish Shell Scripting"
echo (string length $STRING)
