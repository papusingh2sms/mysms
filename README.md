# MySMS v1.0

### Don't copy this code without give me the credits, nerd! 

Script that generates an Android App to hack SMS through WAN 

![ms](https://user-images.githubusercontent.com/34893261/44208253-4869cf80-a136-11e8-9758-ed34a9be6458.png)

### Features:
### Port Forwarding using SSH Tunneling with Serveo.net

## Legal disclaimer:

Usage of MySMS for attacking targets without prior mutual consent is illegal. It's the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program 


### Installing on Kali Linux:
```
Install dependencies:
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo apt-get install gradle

Use Java8:
Get Java8 dir with command:
# update-alternatives --list java

# Set Java 8 as default
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

# Download Android Studio (replace with the latest version link)
wget https://dl.google.com/android/studio/ide-zips/2021.1.1.14/android-studio-2021.1.1.14-linux.tar.gz -O ~/Downloads/android

Installing Android Studio:
# unzip ~/Download/android*.zip -d /opt

For AMD64 Arch, Install Android Studio dependencies:
# apt-get install lib32z1 lib32ncurses6 lib32stdc++6


Run Android Studio:
# cd /opt/android-studio/bin
# ./studio.sh

Go to SDK Manager (Configure -> SDK Manager) and Download:
Android SDK Build-tools, Android SDK-tools, Android SDK platform-tools, Support Repository

Run script:
cd mysms/
chmod +x mysms.sh


