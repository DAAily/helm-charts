#!/usr/bin/bash
# Disable all Bots to index our Helm Chart.
echo "Control Bots, Spiders and Crawlers"
echo "Create the 'robots.txt' file."
> robots.txt
if [ -f robots.txt ];then
    echo ".....'robots.txt' file created."
else
    echo "Error occur creating 'robots.txt' file."
fi
echo "Disallowing User-Agent(s)"
echo -e "User-Agent: *" >> robots.txt
if [ $? == 0 ];then
    echo ".....'User-Agent: *' Added"
else
    echo "[ERROR] Failed to Add 'User-Agent: *'"
fi
echo -e "Disallow: /" >> robots.txt
if [ $? == 0 ];then
    echo ".....'Disallow: /' Added"
else
    echo "[ERROR] Failed to Add 'Disallow: /'"
fi