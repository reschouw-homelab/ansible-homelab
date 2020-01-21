;
; dorwinia.com forward records: -------------------------------------------
;
$TTL    604800
@       IN      SOA     dns-1.dorwinia.com. root.dorwinia.com. (
                            620         ; Serial
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

; Public WAN Records: -----------------------------------------------------

dorwinia.com.				IN	A	192.168.1.145
test.dorwinia.com.			IN	A	192.168.1.145
wiki.dorwinia.com.			IN	A	192.168.1.145
git.dorwinia.com.			IN	A	192.168.1.145

; Device A Records: -------------------------------------------------------

sexton.dorwinia.com.			IN	A	192.168.1.1
medusa.dorwinia.com.			IN	A	192.168.1.2
wap-1.dorwinia.com.			IN	A	192.168.1.8
wap-2.dorwinia.com.			IN	A	192.168.1.9
dhcp-1.dorwinia.com.			IN	A	192.168.1.21
dhcp-2.dorwinia.com.			IN	A	192.168.1.22
voice.dorwinia.com.			IN	A	192.168.1.30
idrac-miniverse-2.dorwinia.com.		IN	A	192.168.1.40
idrac-miniverse.dorwinia.com.		IN	A	192.168.1.41
idrac-tinyverse.dorwinia.com.		IN	A	192.168.1.42
idrac-hyperverse.dorwinia.com.		IN	A	192.168.1.44
config.dorwinia.com.			IN	A	192.168.1.50
ans1.dorwinia.com.			IN	A	192.168.1.51
ans2.dorwinia.com.			IN	A	192.168.1.52
ident-1.dorwinia.com.			IN	A	192.168.1.61
ident-2.dorwinia.com.			IN	A	192.168.1.62
miniverse-2.dorwinia.com.		IN	A	192.168.1.100
miniverse.dorwinia.com.			IN	A	192.168.1.101
tinyverse.dorwinia.com.			IN	A	192.168.1.102
gameverse.dorwinia.com.			IN	A	192.168.1.103
hyperverse.dorwinia.com.		IN	A	192.168.1.104
singularity.dorwinia.com.		IN	A	192.168.1.111
unifibox.dorwinia.com.			IN	A	192.168.1.132
wikibox.dorwinia.com.			IN	A	192.168.1.140
craftbox.dorwinia.com.			IN	A	192.168.1.143
gitbox.dorwinia.com.			IN	A	192.168.1.144
roxybox.dorwinia.com.			IN	A	192.168.1.145
libre.dorwinia.com.			IN	A	192.168.1.146
plex.dorwinia.com.			IN	A	192.168.1.147
syslog.dorwinia.com.			IN	A	192.168.1.148
netbox.dorwinia.com.			IN	A	192.168.1.149
