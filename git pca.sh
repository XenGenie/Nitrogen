#!/bin/bash
array=(xAnalytics xBanner xNavigation xBlox)

echo "Array size: ${#array[*]}"

echo "Array items:"
for item in ${array[*]}
do
    printf "Adding Files   %s\n" $item
    cd $item
    git add .
    git commit -m "automated nightly push"
    git push -u origin master
    cd ..
done