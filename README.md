# MySMS v1.0
## Author: https://github.com/thelinuxchoice/mysms
## IG: https://www.instagram.com/thelinuxchoice
### Don't copy this code without give me the credits, nerd! 

Script that generates an Android App to hack SMS through WAN 

![ms](https://user-images.githubusercontent.com/34893261/44208253-4869cf80-a136-11e8-9758-ed34a9be6458.png)

### Features:
### Port Forwarding using SSH Tunneling with Serveo.net

## Legal disclaimer:

Usage of MySMS for attacking targets without prior mutual consent is illegal. It's the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program 


### Installing on Kali Linux:
```
# git clone https://github.com/thelinuxchoice/mysms
# cd mysms

Download Android Studio:
https://developer.android.com/studio

Install:
# unzip ~/Download/android*.zip -d /opt

Run Android Studio:
# cd /opt/android-studio/bin
# ./studio.sh

Go to SDK Manager (Configure -> SDK Manager) and Download:
Android SDK Build-tools, Android SDK-tools, Android SDK platform-tools, Support Repository

Use Java8:
Get Java8 dir with command:
# update-alternatives --list java

Copy and replace dir on command:
# update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

Run script:
# cd mysms/
# bash mysms.sh

bash mysms.sh
```

### Donate!
Support the authors:

<noscript><a href="https://liberapay.com/thelinuxchoice/donate"><img alt="Donate using Liberapay" src="https://liberapay.com/assets/widgets/donate.svg"></a></noscript>
