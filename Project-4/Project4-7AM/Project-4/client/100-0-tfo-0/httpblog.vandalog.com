[11903:11908:3886440811:WARNING:proxy_service.cc(889)] PAC support disabled because there is no system implementation

(test_shell:11903): IBUS-WARNING **: The owner of /home/mininet/.config/ibus/bus is not root!
Loading hacky DNS from '/home/mininet/Projects/Project4-7AM/Project-4/hack_dns' succeeded.
Remapping 'www.chipublib.org' -> '10.0.0.1' port 8000
Remapping 'en.wikipedia.org' -> '10.0.0.2' port 8000
Remapping 'blog.vandalog.com' -> '10.0.0.3' port 8000
Remapping 'alibi.com' -> '10.0.0.4' port 8000
<stats>
c:tfo.supported:	0
c:WebFrameActiveCount:	1
t:tfo.page_load_timer:	691
c:URLRequestCount:	1
c:disk_cache.miss:	1
c:HttpNetworkTransaction.Count:	1
c:tcp.connect:	2
c:socket.backup_created:	1
c:tcp.write_bytes:	348
c:tcp.read_bytes:	118
</stats>

<resolves>
strt (ms) | end (ms)  | len (ms)  | err | url:port -> address_list
   84.957 |   336.873 |   251.916 |   0 | blog.vandalog.com:80 ->  10.0.0.3:8000
   85.066 |    85.066 |     0.000 |   1 | blog.vandalog.com:80 ->  nil
  336.855 |   336.855 |     0.000 |   1 | blog.vandalog.com:80 ->  nil
</resolves>

<transactions>
strt (ms) | end (ms)  | len (ms)  | url
   84.914 |   700.419 |   615.505 | http://blog.vandalog.com/
</transactions>

<responses>
status       | mime_type       | charset | url -> redirect_url
          OK |       text/html |         | http://blog.vandalog.com/ -> nil
</responses>

<queries>
Collections of histograms for DNS.
Histogram: DNS.TotalTime recorded 2 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (2 = 100.0%)
1  ... 


Collections of histograms for Net.
Histogram: Net.ConnectionTypeCount3 recorded 3 samples, average = 2.3 (flags = 0x1)
0  ------------------------------------------------------------------------O (2 = 66.7%)
1  ... 
7  ------------------------------------O                                     (1 = 33.3%) {66.7%}
8  ... 

Histogram: Net.DNS_Resolution_And_TCP_Connection_Latency2 recorded 2 samples, average = 307.0 (flags = 0x1)
0    ... 
186  ------------------------------------------------------------------------O (1 = 50.0%) {0.0%}
211  ... 
394  ------------------------------------------------------------------------O (1 = 50.0%) {50.0%}
446  ... 

Histogram: Net.HadConnectionType3 recorded 2 samples, average = 3.5 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 50.0%)
1  ... 
7  ------------------------------------------------------------------------O (1 = 50.0%) {50.0%}
8  ... 

Histogram: Net.HttpConnectionLatency recorded 1 samples, average = 409.0 (flags = 0x1)
0    ... 
394  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
446  ... 

Histogram: Net.HttpJob.TotalTime recorded 1 samples, average = 616.0 (flags = 0x1)
0    ... 
533  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
633  ... 

Histogram: Net.HttpJob.TotalTimeNotCached recorded 1 samples, average = 616.0 (flags = 0x1)
0    ... 
533  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
633  ... 

Histogram: Net.HttpJob.TotalTimeSuccess recorded 1 samples, average = 616.0 (flags = 0x1)
0    ... 
533  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
633  ... 

Histogram: Net.HttpResponseCode recorded 1 samples, average = 200.0 (flags = 0x1)
0    ... 
200  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
201  ... 

Histogram: Net.HttpSocketType recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

Histogram: Net.HttpTimeToFirstByte recorded 1 samples, average = 615.0 (flags = 0x1)
0    ... 
585  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
718  ... 

Histogram: Net.NumDuplicateCookiesInDb recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.PreconnectUtilization2 recorded 1 samples, average = 2.0 (flags = 0x1)
0  ... 
2  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
3  ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_HTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_SOCK recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_SSL2 recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_TCP recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_TCPforHTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_TCPforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_TCPforSOCKS recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_HTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_SOCK recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_SSL2 recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_TCP recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_TCPforHTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_TCPforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_UnusedSocket_TCPforSOCKS recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_HTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_SOCK recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_SSL2 recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_TCP recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

Histogram: Net.SocketInitErrorCodes_TCPforHTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_TCPforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_TCPforSOCKS recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_HTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_SOCK recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_SSL2 recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_TCP recorded 1 samples, average = 409.0 (flags = 0x1)
0    ... 
394  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
446  ... 

Histogram: Net.SocketRequestTime_TCPforHTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_TCPforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_TCPforSOCKS recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_HTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_SOCK recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_SSL2 recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCP recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

Histogram: Net.SocketType_TCPforHTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCPforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCPforSOCKS recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.TCP_Connection_Latency recorded 2 samples, average = 307.0 (flags = 0x1)
0    ... 
186  ------------------------------------------------------------------------O (1 = 50.0%) {0.0%}
211  ... 
394  ------------------------------------------------------------------------O (1 = 50.0%) {50.0%}
446  ... 

Histogram: Net.TCP_Connection_Latency_IPv4_No_Race recorded 2 samples, average = 307.0 (flags = 0x1)
0    ... 
186  ------------------------------------------------------------------------O (1 = 50.0%) {0.0%}
211  ... 
394  ------------------------------------------------------------------------O (1 = 50.0%) {50.0%}
446  ... 

Histogram: Net.Transaction_Latency_Total recorded 1 samples, average = 615.0 (flags = 0x1)
0    ... 
572  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
648  ... 

Histogram: Net.Transaction_Latency_Total_New_Connection recorded 1 samples, average = 615.0 (flags = 0x1)
0    ... 
572  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
648  ... 

Histogram: Net.Transaction_Latency_b recorded 1 samples, average = 205.0 (flags = 0x1)
0    ... 
186  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
211  ... 


</queries>
