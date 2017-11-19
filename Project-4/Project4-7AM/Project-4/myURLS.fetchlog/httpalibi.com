[8042:8049:3022952169:ERROR:nss_util.cc(90)] Failed to create /home/mininet/.pki/nssdb directory.
[8042:8049:3022954234:WARNING:proxy_service.cc(889)] PAC support disabled because there is no system implementation
<stats>
c:tfo.supported:	0
c:WebFrameActiveCount:	1
t:tfo.page_load_timer:	20044
c:URLRequestCount:	1
c:disk_cache.miss:	1
c:HttpNetworkTransaction.Count:	1
</stats>

<resolves>
strt (ms) | end (ms)  | len (ms)  | err | url:port -> address_list
   36.415 | 20053.910 | 20017.495 | 4294967191 | alibi.com:80 ->  nil
   36.504 |    36.504 |     0.000 |   1 | alibi.com:80 ->  nil
</resolves>

<transactions>
strt (ms) | end (ms)  | len (ms)  | url
   36.377 | 20054.034 | 20017.657 | http://alibi.com/
</transactions>

<responses>
status       | mime_type       | charset | url -> redirect_url
             |                 |         | http://alibi.com/ -> nil
</responses>

<queries>
Collections of histograms for DNS.
Histogram: DNS.AttemptDiscarded recorded 1 samples, average = 1.0 (flags = 0x1)
0  O                                                                         (0 = 0.0%)
1  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
2  ... 

Histogram: DNS.AttemptFailDuration recorded 1 samples, average = 20017.0 (flags = 0x1)
0      ... 
17834  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
20585  ... 

Histogram: DNS.AttemptFailure recorded 1 samples, average = 1.0 (flags = 0x1)
0  O                                                                         (0 = 0.0%)
1  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
2  ... 

Histogram: DNS.AttemptTimeSavedByRetry recorded 1 samples, average = 3042981.0 (flags = 0x1)
0        ... 
2702128  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
3118920  ... 

Histogram: DNS.JobQueueTime recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

Histogram: DNS.JobQueueTimeAfterChange recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

Histogram: DNS.JobQueueTimeAfterChange_LOWEST recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

Histogram: DNS.JobQueueTime_LOWEST recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

Histogram: DNS.ResolveCategory recorded 1 samples, average = 1.0 (flags = 0x1)
0  O                                                                         (0 = 0.0%)
1  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
2  ... 

Histogram: DNS.ResolveFail recorded 1 samples, average = 20017.0 (flags = 0x1)
0      ... 
17834  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
20585  ... 

Histogram: DNS.ResolveFail_FAMILY_UNSPEC recorded 1 samples, average = 20017.0 (flags = 0x1)
0      ... 
17834  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
20585  ... 

Histogram: DNS.TotalTime recorded 1 samples, average = 20017.0 (flags = 0x1)
0      ... 
17834  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
20585  ... 


Collections of histograms for Net.
Histogram: Net.HttpJob.TotalTime recorded 1 samples, average = 20019.0 (flags = 0x1)
0      ... 
10000  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}

Histogram: Net.HttpJob.TotalTimeCancel recorded 1 samples, average = 20019.0 (flags = 0x1)
0      ... 
10000  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}

Histogram: Net.HttpTimeToFirstByte recorded 1 samples, average = 20020.0 (flags = 0x1)
0      ... 
18951  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
23255  ... 

Histogram: Net.NumDuplicateCookiesInDb recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.OSErrorsForGetAddrinfo_Linux recorded 1 samples, average = 2.0 (flags = 0x1)
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

Histogram: Net.SocketInitErrorCodes_TCP recorded 1 samples, average = 105.0 (flags = 0x1)
0    ... 
105  ------------------------------------------------------------------------O (1 = 100.0%) {0.0%}
106  ... 

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

Histogram: Net.SocketRequestTime_TCP recorded 0 samples (flags = 0x1)
0 ... 

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

Histogram: Net.SocketType_TCP recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCPforHTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCPforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCPforSOCKS recorded 0 samples (flags = 0x1)
0 ... 


</queries>
