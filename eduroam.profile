[ipv6]
method=ignore
ip6-privacy=0

[connection]
id=eduroam
uuid=167213e3-1a81-40c2-9371-a93e22a24648
type=802-11-wireless

[802-11-wireless-security]
key-mgmt=wpa-eap

[802-11-wireless]
ssid=eduroam
mode=infrastructure
security=802-11-wireless-security

[802-1x]
eap=peap;
identity=<CARD_NUMBER_WITH_ZEROS>@ufrgs.br
ca-cert=/etc/ca-certificates/trust-source/anchors/ufrgs.crt
phase2-auth=mschapv2
password=<PASSWORD>
private-key-password-flags=1
phase2-private-key-password-flags=1

[ipv4]
method=auto
may-fail=false
