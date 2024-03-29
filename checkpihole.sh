piholeResult=$(pihole status 2>&1)

if [ "$piholeResult" != *"[✓] Pi-hole blocking is enabled"* ]; then
    curl --retry 3 https://hc-ping.com/{healthcheckurl}
    exit 1;
else
    curl --retry 3 https://hc-ping.com/{healthcheckurl}/fail
    exit 1;
fi

# 0 5 * * * sh /home/pi/scripts/checkpihole.sh >/dev/null 2>&1
