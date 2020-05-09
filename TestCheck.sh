#! /bin/bash

##Looking at making a Mac version that downloads the files needed.
##I'm not familur with Bash though so still learning.

## [Status: Incomplete]

javac --version >ver_check 2>NUL

if [[ ver_check = "NUL" ]]
then
  echo "You need to download the latest version of Java SE."
  echo "Opening default browser to official Java download site."
  open "https://www.oracle.com/ca-en/java/technologies/javase-downloads.html"
else
  echo "Your Java SE is updated."
fi

if [[ -f junit-4.13.jar ]]
then
    echo ""
    echo "junit-4.13.jar exists in your current directory."
    echo ""
else
    echo ""
    echo "junit-4.13.jar is missing from your current directory."
    echo "Downloading junit-4.13.jar"
    echo "..."
    curl -O "https://search.maven.org/remotecontent?filepath=junit/junit/4.13/junit-4.13.jar"
    echo ""  
fi

if [[ -f hamcrest-core-1.3.jar ]]
then 
    echo ""
    echo "hamcrest-core-1.3.jar exists in your current directory."
    echo ""
else
    echo "hamcrest-core-1.3.jar is missing from your current directory."
    echo "Downloading hamcrest-core-1.3.jar"
    echo "..."
    curl -O "https://search.maven.org/remotecontent?filepath=org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar"
    echo ""
fi