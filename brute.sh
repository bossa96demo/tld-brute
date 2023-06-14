if (test $# -lt 1); then
	read -p "first part of website (ex. abob): " site
else
	site=$1
fi
for i in $(cat ./tlds-alpha-by-domain.txt); do 
	if (curl --head --silent $site.$i > /dev/null 2>&1); then
		echo $site.$i exists
	fi
done
