#! /bin/bash

# Checking if sudo or root
sudo -v
if [ $? -eq 0 ]; then
  echo "sudo confirmed."
else
  echo "You need to provide sudo access for proper routing configuration in /etc/hosts"
  exit
fi

# getting the first part of java compiler version
javaVersion=$(javac -version 2>&1 | awk -F. '{print $1}')

# echo $javaVersion

case $javaVersion in
    
    # if java 11
    'javac 11')
        sudo update-java-alternatives -s java-1.17.0-openjdk-amd64
        echo
        echo Java 17 is running now !
    ;;
    
    # if java 17
    'javac 17')
        sudo update-java-alternatives -s java-1.11.0-openjdk-amd64
        echo
        echo Java 11 is running now !
    ;;
    
esac

echo
javac -version
java -version
exit
