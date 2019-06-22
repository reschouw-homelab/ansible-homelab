;
; dorwinia.com forward records: -------------------------------------------
;
$TTL    604800
@       IN      SOA     dns-1.dorwinia.com. root.dorwinia.com. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@		IN      NS      dns-1.dorwinia.com.
dns-1		IN	A       192.168.1.11
@		IN      NS      dns-2.dorwinia.com.
dns-2		IN	A	192.168.1.12
@		IN      NS      dns-3.dorwinia.com.
dns-3		IN	A	192.168.1.13

; Device A Records: -------------------------------------------------------

medusa.dorwinia.com.		IN		A		192.168.1.6
config.dorwinia.com.		IN		A		192.168.1.50
ans1.dorwinia.com.		IN		A		192.168.1.100
ans2.dorwinia.com.		IN		A		192.168.1.100
uberverse.dorwinia.com.		IN		A		192.168.1.100
miniverse.dorwinia.com.		IN		A		192.168.1.101
tinyverse.dorwinia.com.		IN		A		192.168.1.102
gameverse.dorwinia.com.		IN		A		192.168.1.103
hyperverse.dorwinia.com.	IN		A		192.168.1.104
singularity.dorwinia.com.	IN		A		192.168.1.111
gitbox.dorwinia.com.		IN		A		192.168.1.144
wikibox.dorwinia.com.		IN		A		192.168.1.140
unifibox.dorwinia.com.		IN		A		192.168.1.132
roxybox.dorwinia.com.		IN		A		192.168.1.145
craftbox.dorwinia.com.		IN		A		192.168.1.143
directorbox.dorwinia.com.	IN		A		192.168.1.97
voice.dorwinia.com.		IN		A		192.168.1.30
