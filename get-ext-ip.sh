echo "Show the external IP"

myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"
echo "My WAN/Public IP address: ${myip}"

# curl ifconfig.me 
# curl icanhazip.com
# curl ipecho.net/plain
# curl ifconfig.co
