#!/bin/sh

if [ "`echo 'PUT YOUR PASSWORD HERE' | sudo -S networksetup -getsocksfirewallproxy Wi-Fi | grep '^Enabled'`" = 'Enabled: Yes' ]; then
    sudo networksetup -setsocksfirewallproxystate Wi-Fi off
    echo 'Turned off!'
else
    sudo networksetup -setsocksfirewallproxystate Wi-Fi on
    echo 'Turned on!'
fi

wait
tor ExitNodes {us}

echo ''
echo 'SOCKS Proxy'
networksetup -getsocksfirewallproxy Wi-Fi | grep '^Enabled'
echo ''
networksetup -getsocksfirewallproxy Wi-Fi | grep '^Server'

networksetup -getsocksfirewallproxy Wi-Fi | grep '^Port'
echo ''
networksetup -getmacaddress wi-fi
networksetup -getproxyautodiscovery wi-fi
# networksetup -setpassiveftp wi-fi off
echo ''
networksetup -getpassiveftp wi-fi

networksetup -getinfo wi-fi
echo ''
echo 'Computer Name'
networksetup -getcomputername wi-fi
echo ''
echo 'DNS Server'
networksetup -getdnsservers wi-fi
echo ''
echo 'Web Proxy'
networksetup -getwebproxy wi-fi

echo ''
