#!/bin/bash
#
#

lh_sslscan(){

	local file="$2"

	echo " "
	echo "======================= Checking SSL & TLS  ========================"
	echo " "

	sslscan --targets=$file > sslscan.txt

	echo " "
	echo "------------- Check Complete, file saved as sslscan.txt ------------"
	echo " "

}

#Function for checking security headers
lh_sheader(){

	local file="$2"
	
	echo " "
	echo "======================= Checking Security Headers ===================="
	echo " "

	nmap -p443 --script http-security-headers -iL $file -oX sec_headers.xml

	echo " "
	echo "------------ Check Complete, file saved as sec_headers.xml -----------"
	echo " "

}

#Function for checking htpp methods allowed
lh_hmethods(){
	local file="$2"

	echo " "
	echo "------------------------ Checking allowed methods ---------------------"
	echo " "

	nmap --script http-methods -iL $file -oX http_methods.xml

	echo " "
	echo "------------ Check Complete, file saved as http_methods.xml -----------"
	echo " "
}




if [ $1 == "lh_sslscan" ]; then
	
	# Call Sslscan Command function
	lh_sslscan "$1" "$2"

elif [ $1 == "lh_sheader" ]; then

	# Call Security Header command function
	lh_sheader "$1" "$2"

elif [ $1 == "lh_hmethods" ]; then
	
	# Call HTTP Methods command function
	lh_hmethods "$1" "$2"
else
	echo "Invalid flag."
	echo " "
	echo "USAGE:" 
	echo "./lowhanging.sh <test> <hostsfiles> "
	echo " "
	echo "test types:"
	echo "lh_sslscan : Check for SSL & TLS certificates"
	echo "lh_sheader : Check for security headers"
	echo "lh_hmethods : Check for http methods allowed"
fi
