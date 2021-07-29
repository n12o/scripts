#!/usr/bin/env bash
set -euo pipefail

# TODO(n12o): Handle custom project root
cd /c/ClashOfStreamers


base=$(git merge-base origin/develop origin/$2)

responsibilities=$(grep @$1 -- CODEOWNERS | cut -d ' ' -f1 | tr '\n' ' ')

IFS=', ' read -r -a array <<< "$responsibilities"

for element in "${array[@]}"
do
    echo
    echo "You are about to review code changes for file $element"
    echo
    echo "Press any key to continue review"
    read
    git diff $base..origin/$2 -- /c/ClashOfStreamers$element
done
