
#!/bin/sh
# put it in /usr/local/bin/
# Down the DNSmasq formatted ad block list
#curl "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=dnsmasq&showintro=0&mimetype=plaintext" | sed -e 's:||:address\=\/:' -e 's:\^:/192\.168\.1\.187:' > /etc/dnsmasq.adblock.conf

wget "http://code.taobao.org/p/adblock/src/trunk/hosts.txt?orig" | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/192\.168\.1\.187:'  > /etc/dnsmasq.adblockcn.new.conf
# Restart DNSmasq

/etc/init.d/dnsmasq restart
