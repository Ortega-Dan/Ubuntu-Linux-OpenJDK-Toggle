#! /bin/bash

# getting the first part of java compiler version
javaVersion=$(javac -version 2>&1 | awk -F. '{print $1}')

# echo $javaVersion

case $javaVersion in
    
    # if java 8
    'javac 1')
        update-java-alternatives -s java-1.11.0-openjdk-amd64
        echo
        echo Java 11 is running now !
        echo
        java -version
        exit
    ;;
    
    # if java 11
    'javac 11')
        update-java-alternatives -s java-1.8.0-openjdk-amd64
        echo
        echo Java 8 is running now !
        echo
        java -version
        exit
    ;;
    
esac