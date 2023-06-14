#!/usr/bin/fish
if test (count $argv) -lt 1
	read -p "first part of website (ex. abob): " site 
else
	set site $argv[1]
end 
for i in (cat ./tlds-alpha-by-domain.txt)
	if curl --head --silent $site.$i > /dev/null 2>&1
		echo $site.$i exists
	end
end
