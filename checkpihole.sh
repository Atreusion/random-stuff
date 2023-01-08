piholeResult=$(pihole status 2>&1)

if [ "$piholeResult" != *"[✓] Pi-hole blocking is enabled"* ]; then
    curl --retry 3 https://hc-ping.com/f7e69cf9-2513-42e0-a0b3-2c40d4f88c8c
    exit 1;
else
    curl --retry 3 https://hc-ping.com/f7e69cf9-2513-42e0-a0b3-2c40d4f88c8c/fail
    exit 1;
fi

# 0 5 * * * sh /home/pi/scripts/checkpihole.sh >/dev/null 2>&1
