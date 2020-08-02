;
; dorwinia.com forward records: -------------------------------------------
;
$TTL    604800
@       IN      SOA     dns-1.dorwinia.com. root.dorwinia.com. (
                          62001         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@		IN      NS      dns-1.dorwinia.com.
dns-1		IN	A       192.168.1.11
@		IN      NS      dns-2.dorwinia.com.
dns-2		IN	A	192.168.1.12

; Public WAN Records: -----------------------------------------------------

dorwinia.com.				IN	A	192.168.1.145
test.dorwinia.com.			IN	A	192.168.1.145
wiki.dorwinia.com.			IN	A	192.168.1.145
gitlab.dorwinia.com.			IN	A	192.168.1.145

; Device A Records: -------------------------------------------------------

sexton.dorwinia.com.			IN	A	192.168.1.1
medusa.dorwinia.com.			IN	A	192.168.1.2
wap-1.dorwinia.com.			IN	A	192.168.1.8
wap-2.dorwinia.com.			IN	A	192.168.1.9
dns-3.dorwinia.com.			IN	A	192.168.1.13
dhcp-1.dorwinia.com.			IN	A	192.168.1.21
dhcp-2.dorwinia.com.			IN	A	192.168.1.22
voice.dorwinia.com.			IN	A	192.168.1.30
esxi-1.dorwinia.com.      IN  A 192.168.1.31
esxi-2.dorwinia.com.      IN  A 192.168.1.32
esxi-3.dorwinia.com.      IN  A 192.168.1.33
esxi-4.dorwinia.com.      IN  A 192.168.1.34
idrac-esxi-1.dorwinia.com.		IN	A	192.168.1.41
idrac-esxi-2.dorwinia.com.		IN	A	192.168.1.42
idrac-esxi-3.dorwinia.com.		IN	A	192.168.1.43
idrac-esxi-4.dorwinia.com.		IN	A	192.168.1.44
config.dorwinia.com.			IN	A	192.168.1.50
ans1.dorwinia.com.			IN	A	192.168.1.51
ans2.dorwinia.com.			IN	A	192.168.1.52
ident-1.dorwinia.com.			IN	A	192.168.1.61
ident-2.dorwinia.com.			IN	A	192.168.1.62
vcenter.dorwinia.com.			IN	A	192.168.1.99
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
nginx.dorwinia.com.			IN	A	192.168.1.145
libre.dorwinia.com.			IN	A	192.168.1.146
plex.dorwinia.com.			IN	A	192.168.1.147
syslog.dorwinia.com.			IN	A	192.168.1.148
netbox.dorwinia.com.			IN	A	192.168.1.149
wordpress.dorwinia.com.			IN	A	192.168.1.150
