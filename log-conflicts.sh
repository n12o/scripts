#!/usr/bin/env bash
#
# In a merge conflict situation, compares commits that cause conflicts.
# Shows both sides without any argument
#
# Arguments:
#    -m for only showing your commits
#    -t for only showing their commits
set -euo pipefail

# todo(n12o): Handle custom project root
cd /c/ClashOfStreamers

mine='false'
theirs='false'

while getopts 'abf:mt' flag; do
  case "${flag}" in
    m) mine='true' ;;
    t) theirs='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done

merge='HEAD~1...origin/develop'

if $mine; then
    merge='origin/develop..HEAD~1'
elif $theirs; then
    merge='HEAD~1..origin/develop'
fi

conflicts=$(git diff --name-only --diff-filter=U)

OIFS="$IFC"
IFS=$'\n'

for element in $conflicts
do
    echo
    echo -e "\e[32m\e[4mYou are about to see conflicts for$element"
    echo -e "\e[32m\e[4mPress any key to continue"
    read
    git log --no-merges $merge --source -- $element
done


echo -e "\e[31m\e[4mPress any key if you want to exit"

read
