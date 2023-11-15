#! /bin/bash
 
set -e

file_path="../dbow2_catkin/CMakeLists.txt"
search_string="git@github.com:"
replace_string="https://github.com/"
file_content=$(<"$file_path")
updated_content=${file_content//$search_string/$replace_string}
echo "$updated_content" > "$file_path"