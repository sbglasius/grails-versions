#!/bin/bash
git config user.name github-actions
git config user.email github-actions@github.com

export SDKMAN_DIR="$HOME/.sdkman" && source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 8.0.282-open

for version in $(cat versions.txt)
do
    echo "Processing $version"
    sdk install grails $version
    sdk use grails $version
    grails create-app versions
    touch ~/dependencyManagement.txt
    cd versions
    ./gradlew -v
    ./gradlew --no-daemon dependencyManagement > ~/dependencyManagement.txt
    cd ..
    echo "Performing git gymnastics"
    git add dependencyManagement.txt
    git add versions
    git commit -a -m $version
    git push origin :refs/tags/$version
    git tag $version
    rm -rf versions
    sdk uninstall grails $version
    sdk flush archives
    df -h .
done

git commit -a -m "Cleanup"
git push origin master -f
git push origin --tags -f

ls -l ~/.sdkman/archives/
