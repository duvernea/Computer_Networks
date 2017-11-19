#!/bin/bash

sysctl 'net.mptcp.mptcp_enabled=1'

./mptcp.sh topo_measure.py 05 524588 > 05.txt
./mptcp.sh topo_measure.py 02 209715 > 02.txt
./mptcp.sh topo_measure.py 01 104858 > 01.txt
./mptcp.sh topo_measure.py 005 52489 > 005.txt

sysctl 'net.mptcp.mptcp_enabled=0'

./mptcp.sh topo_wifi.py 05 524588 > 05_tcp_wifi.txt
./mptcp.sh topo_wifi.py 02 209715 > 02_tcp_wifi.txt
./mptcp.sh topo_wifi.py 01 104858 > 01_tcp_wifi.txt
./mptcp.sh topo_wifi.py 005 52489 > 005_tcp_wifi.txt

./mptcp.sh topo_3g.py 05 524588 > 05_tcp_3g.txt
./mptcp.sh topo_3g.py 02 209715 > 02_tcp_3g.txt
./mptcp.sh topo_3g.py 01 104858 > 01_tcp_3g.txt
./mptcp.sh topo_3g.py 005 52489 > 005_tcp_3g.txt


