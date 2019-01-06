#!/bin/bash
# Github : https://github.com/Lmintcoder
# Recode ? OK but Don't Change Author OR API WILL BE DELETED
clear
merah='\e[31m'
ijo='\e[1;32m'
kuning='\e[1;33m'
biru='\e[1;34m'
NC='\e[0m'
#intro
printf "${ijo}
	 ██████╗ ██╗   ██╗███████╗███████╗
	██╔════╝ ██║   ██║╚══███╔╝╚══███╔╝
	██║  ███╗██║   ██║  ███╔╝   ███╔╝
	██║   ██║██║   ██║ ███╔╝   ███╔╝
	╚██████╔╝╚██████╔╝███████╗███████╗
	 ╚═════╝  ╚═════╝ ╚══════╝╚══════╝                                 ${biru}
	      SMS Gratis(Free SMS)
	      Code By : Lmintcoder
	          (グッズ)
"
printf "${kuning}__________________________________________________${NC}\n\n"
sms(){
	main(){
	printf "${kuning}[+]${NC} Destination Number : ";read Num
	printf "${kuning}[+]${NC} Message : ";read Message
	send=$(curl 'http://nandrbiz1.com/smsgratis.php' -d "num=$Num&message=$Message" -s)
	if [[ $send == "SMS Gratis Telah Dikirim" ]]
	then
		printf "${ijo}[SENT]${NC} [Message : $Message] [To : $Num]\n"
	else
		printf "${merah}[FAIL]${NC} [Reason : $send]\n"
	fi
}
main
for (( ; ;))
do
printf "${kuning}[+]${NC} Again (y/n) : ";read again
if [[ $again == 'y' ]]
then
	main
elif [[ $again == 'n' ]]; then
	echo "Bye.."
	exit
else
	echo "Wrong Input"
	exit
fi
done
}
sms