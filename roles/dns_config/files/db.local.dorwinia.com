;
; local.dorwinia.com forward records: -------------------------------------------
;
$TTL    604800
@       IN      SOA     dns-1.dorwinia.com. root.dorwinia.com. (
                            900         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@               IN      NS      dns-1.dorwinia.com.
@               IN      NS      dns-2.dorwinia.com.

