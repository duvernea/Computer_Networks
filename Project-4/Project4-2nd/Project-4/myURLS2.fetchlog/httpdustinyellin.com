[15185:15192:21871326128:ERROR:nss_util.cc(90)] Failed to create /home/mininet/.pki/nssdb directory.
[15185:15192:21871329076:WARNING:proxy_service.cc(889)] PAC support disabled because there is no system implementation
*** Renamed /css/dy.css?Thursday%2012th%20of%20October%202017%2007:05:51%20PM to /3bf0b30bb348a442d9ecfa4c0257062b ***
*** Renamed /af/b06233/000000000000000000012afd/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n6&v=3 to /4c3ce8fc8f6271888bb3be1042b084d6 ***
*** Renamed /af/631603/0000000000000000000130f4/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3 to /4d6c11a512645e5b605075378bd31869 ***
*** Renamed /af/66856e/0000000000000000000130f5/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n6&v=3 to /a95427e00217e07faf0332f5c5dc9ef9 ***
*** Renamed /af/5fb5dd/0000000000000000000130f1/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n7&v=3 to /d7af099205347fbeda92bb01dc1162d8 ***
*** Renamed /p.gif?s=1&k=itc7fzl&ht=tk&h=dustinyellin.com&f=8493.8495.8497.17017&a=1853384&js=1.18.24&app=typekit&e=js&_=1507860354212 to /4f5bd0dd1de664b3e403708bf57caa28 ***
<stats>
c:tfo.supported:	0
c:WebFrameActiveCount:	1
t:tfo.page_load_timer:	2762
c:URLRequestCount:	14
c:disk_cache.miss:	13
c:HttpNetworkTransaction.Count:	14
c:tcp.connect:	15
c:tcp.write_bytes:	8113
c:tcp.read_bytes:	516121
c:socket.backup_created:	2
</stats>

<resolves>
strt (ms) | end (ms)  | len (ms)  | err | url:port -> address_list
   73.751 |   400.892 |   327.141 |   0 | dustinyellin.com:80 ->  205.186.179.196:80
   73.919 |    73.919 |     0.000 |   1 | dustinyellin.com:80 ->  nil
  398.408 |   536.343 |   137.935 |   0 | maxcdn.bootstrapcdn.com:443 ->  108.161.189.121:443
  398.446 |   398.446 |     0.000 |   1 | maxcdn.bootstrapcdn.com:443 ->  nil
  399.770 |   650.530 |   250.760 |   0 | use.typekit.net:80 ->  23.50.230.46:80
  399.798 |   399.798 |     0.000 |   1 | use.typekit.net:80 ->  nil
  400.305 |   400.305 |     0.000 |   1 | dustinyellin.com:80 ->  nil
  400.328 |   400.328 |     0.000 |   1 | dustinyellin.com:80 ->  nil
  400.869 |   400.869 |     0.000 |   1 | dustinyellin.com:80 ->  nil
  400.888 |   400.888 |     0.000 |   1 | dustinyellin.com:80 ->  nil
  402.686 |   543.996 |   141.310 |   0 | code.jquery.com:443 ->  198.232.125.113:443
  402.725 |   402.725 |     0.000 |   1 | code.jquery.com:443 ->  nil
  403.196 |   536.536 |   133.340 |   0 | maxcdn.bootstrapcdn.com:80 ->  108.161.189.121:443
  403.212 |   403.212 |     0.000 |   1 | maxcdn.bootstrapcdn.com:80 ->  nil
  536.338 |   536.338 |     0.000 |   1 | maxcdn.bootstrapcdn.com:443 ->  nil
  543.989 |   543.989 |     0.000 |   1 | code.jquery.com:443 ->  nil
  650.521 |   650.521 |     0.000 |   1 | use.typekit.net:80 ->  nil
 1156.924 |  1160.103 |     3.179 |   0 | use.typekit.net:443 ->  23.50.230.46:443
 1156.963 |  1156.963 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1156.967 |  1156.967 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1157.790 |  1157.790 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1157.828 |  1157.828 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1157.834 |  1157.834 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1159.231 |  1159.231 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1159.282 |  1159.282 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1159.288 |  1159.288 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1160.046 |  1160.046 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1160.090 |  1160.090 |     0.000 |   1 | use.typekit.net:443 ->  nil
 1160.101 |  1160.101 |     0.000 |   1 | use.typekit.net:443 ->  nil
 2069.069 |  2320.389 |   251.320 |   0 | p.typekit.net:443 ->  23.50.230.46:443 [2600:1407:16:2a5::20c1]:443 [2600:1407:16:28e::20c1]:443
 2069.104 |  2069.104 |     0.000 |   1 | p.typekit.net:443 ->  nil
 2071.802 |  2071.802 |     0.000 |   1 | p.typekit.net:443 ->  nil
 2071.831 |  2071.831 |     0.000 |   1 | p.typekit.net:443 ->  nil
 2180.120 |  2180.120 |     0.000 |   1 | p.typekit.net:443 ->  nil
 2180.405 |  2180.405 |     0.000 |   1 | p.typekit.net:443 ->  nil
 2320.349 |  2320.349 |     0.000 |   1 | p.typekit.net:443 ->  nil
 2320.383 |  2320.383 |     0.000 |   1 | p.typekit.net:443 ->  nil
 2816.239 |  2816.247 |     0.008 | 4294966492 | performance.typekit.net:443 ->  nil
 2816.301 |  2816.301 |     0.000 |   1 | performance.typekit.net:443 ->  nil
</resolves>

<transactions>
strt (ms) | end (ms)  | len (ms)  | url
   73.695 |   401.497 |   327.802 | http://dustinyellin.com/
  400.293 |   548.975 |   148.682 | http://dustinyellin.com/css/normalize.css
  403.186 |   729.501 |   326.315 | http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
  400.858 |   857.861 |   457.003 | http://dustinyellin.com/css/dy.css?Thursday%2012th%20of%20October%202017%2007:05:51%20PM
  399.747 |   859.601 |   459.854 | http://use.typekit.net/itc7fzl.js
  398.390 |  1057.781 |   659.391 | https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css
  402.668 |  1160.660 |   757.992 | https://code.jquery.com/jquery-1.10.2.min.js
 1156.906 |  1852.610 |   695.704 | https://use.typekit.net/af/b06233/000000000000000000012afd/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n6&v=3
 1157.772 |  2029.069 |   871.297 | https://use.typekit.net/af/631603/0000000000000000000130f4/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3
 1159.192 |  2177.187 |  1017.995 | https://use.typekit.net/af/66856e/0000000000000000000130f5/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n6&v=3
 1160.027 |  2341.810 |  1181.783 | https://use.typekit.net/af/5fb5dd/0000000000000000000130f1/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n7&v=3
 2071.785 |  2694.351 |   622.566 | https://p.typekit.net/p.gif?s=1&k=itc7fzl&ht=tk&h=dustinyellin.com&f=8493.8495.8497.17017&a=1853384&js=1.18.24&app=typekit&e=js&_=1507860354212
 2069.050 |  2813.592 |   744.542 | https://p.typekit.net/p.gif?
</transactions>

<responses>
status       | mime_type       | charset | url -> redirect_url
          OK |       text/html |   utf-8 | http://dustinyellin.com/ -> nil
          OK |        text/css |         | http://dustinyellin.com/css/normalize.css -> nil
          OK | application/javascript |         | http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js -> nil
          OK |        text/css |         | http://dustinyellin.com/css/dy.css?Thursday%2012th%20of%20October%202017%2007:05:51%20PM -> nil
          OK | text/javascript |   utf-8 | http://use.typekit.net/itc7fzl.js -> nil
          OK |        text/css |         | https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css -> nil
          OK | application/javascript |   utf-8 | https://code.jquery.com/jquery-1.10.2.min.js -> nil
          OK | application/font-woff |         | https://use.typekit.net/af/b06233/000000000000000000012afd/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n6&v=3 -> nil
          OK | application/font-woff |         | https://use.typekit.net/af/631603/0000000000000000000130f4/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n4&v=3 -> nil
          OK | application/font-woff |         | https://use.typekit.net/af/66856e/0000000000000000000130f5/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n6&v=3 -> nil
          OK | application/font-woff |         | https://use.typekit.net/af/5fb5dd/0000000000000000000130f1/23/d?primer=7cdcb44be4a7db8877ffa5c0007b8dd865b3bbc383831fe2ea177f62257a9191&fvd=n7&v=3 -> nil
          OK |       image/gif |         | https://p.typekit.net/p.gif?s=1&k=itc7fzl&ht=tk&h=dustinyellin.com&f=8493.8495.8497.17017&a=1853384&js=1.18.24&app=typekit&e=js&_=1507860354212 -> nil
          OK |       image/gif |         | https://p.typekit.net/p.gif? -> nil
</responses>

<queries>
Collections of histograms for DNS.
Histogram: AsyncDNS.HaveDnsConfig recorded 5 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (5 = 100.0%)
1  ... 

Histogram: DNS.AttemptDiscarded recorded 5 samples, average = 1.0 (flags = 0x1)
0  O                                                                         (0 = 0.0%)
1  ------------------------------------------------------------------------O (5 = 100.0%) {0.0%}
2  ... 

Histogram: DNS.AttemptSuccess recorded 5 samples, average = 1.0 (flags = 0x1)
0  O                                                                         (0 = 0.0%)
1  ------------------------------------------------------------------------O (5 = 100.0%) {0.0%}
2  ... 

Histogram: DNS.AttemptSuccessDuration recorded 5 samples, average = 115.8 (flags = 0x1)
0    ... 
43   ------------------------O                                                 (1 = 20.0%) {0.0%}
50   ... 
103  ------------------------O                                                 (1 = 20.0%) {20.0%}
119  O                                                                         (0 = 0.0%) {40.0%}
137  ------------------------------------------------------------------------O (3 = 60.0%) {40.0%}
158  ... 

Histogram: DNS.AttemptTimeSavedByRetry recorded 5 samples, average = 21872052.0 (flags = 0x1)
0        ... 
3600000  ------------------------------------------------------------------------O (5 = 100.0%) {0.0%}

Histogram: DNS.JobQueueTime recorded 6 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (6 = 100.0%)
1  ... 

Histogram: DNS.JobQueueTimeAfterChange recorded 6 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (6 = 100.0%)
1  ... 

Histogram: DNS.JobQueueTimeAfterChange_LOWEST recorded 6 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (6 = 100.0%)
1  ... 

Histogram: DNS.JobQueueTime_LOWEST recorded 6 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (6 = 100.0%)
1  ... 

Histogram: DNS.ResolveCategory recorded 5 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (5 = 100.0%)
1  ... 

Histogram: DNS.ResolveSuccess recorded 5 samples, average = 115.6 (flags = 0x1)
0    ... 
43   ------------------------O                                                 (1 = 20.0%) {0.0%}
50   ... 
103  ------------------------O                                                 (1 = 20.0%) {20.0%}
119  O                                                                         (0 = 0.0%) {40.0%}
137  ------------------------------------------------------------------------O (3 = 60.0%) {40.0%}
158  ... 

Histogram: DNS.ResolveSuccess_FAMILY_UNSPEC recorded 5 samples, average = 115.6 (flags = 0x1)
0    ... 
43   ------------------------O                                                 (1 = 20.0%) {0.0%}
50   ... 
103  ------------------------O                                                 (1 = 20.0%) {20.0%}
119  O                                                                         (0 = 0.0%) {40.0%}
137  ------------------------------------------------------------------------O (3 = 60.0%) {40.0%}
158  ... 

Histogram: DNS.TotalTime recorded 15 samples, average = 54.5 (flags = 0x1)
0    ------------------------------------------------------------------------O (8 = 53.3%)
1    ... 
43   --O                                                                       (1 = 6.7%) {53.3%}
50   ... 
103  ----O                                                                     (2 = 13.3%) {60.0%}
119  --O                                                                       (1 = 6.7%) {73.3%}
137  -----O                                                                    (3 = 20.0%) {80.0%}
158  ... 


Collections of histograms for Net.
Histogram: Net.CertVerifier_Job_Latency recorded 4 samples, average = 0.8 (flags = 0x1)
0  ------------------------O                                                 (1 = 25.0%)
1  ------------------------------------------------------------------------O (3 = 75.0%) {25.0%}
2  ... 

Histogram: Net.Compress.NoProxy.BytesAfterCompression recorded 3 samples, average = 22741.7 (flags = 0x1)
0      ... 
17709  ------------------------------------------------------------------------O (2 = 66.7%) {0.0%}
19137  ... 
30480  ------------------------------------O                                     (1 = 33.3%) {66.7%}
32938  ... 

Histogram: Net.Compress.NoProxy.BytesBeforeCompression recorded 3 samples, average = 6835.3 (flags = 0x1)
0     ... 
3753  ------------------------------------------------------------------------O (1 = 33.3%) {0.0%}
4056  ... 
6981  ------------------------------------------------------------------------O (1 = 33.3%) {33.3%}
7544  ... 
9521  ------------------------------------------------------------------------O (1 = 33.3%) {66.7%}
10289 ... 

Histogram: Net.Compress.NoProxy.ShouldHaveBeenCompressed recorded 2 samples, average = 13585.5 (flags = 0x1)
0      ... 
7544   ------------------------------------------------------------------------O (1 = 50.0%) {0.0%}
8152   ... 
19137  ------------------------------------------------------------------------O (1 = 50.0%) {50.0%}
20681  ... 

Histogram: Net.Compress.SSL.BytesAfterCompression recorded 2 samples, average = 105128.5 (flags = 0x1)
0       ... 
90293   ------------------------------------------------------------------------O (1 = 50.0%) {0.0%}
97576   ... 
113951  ------------------------------------------------------------------------O (1 = 50.0%) {50.0%}
123142  ... 

Histogram: Net.Compress.SSL.BytesBeforeCompression recorded 2 samples, average = 30335.0 (flags = 0x1)
0      ... 
22349  ------------------------------------------------------------------------O (1 = 50.0%) {0.0%}
24152  ... 
35595  ------------------------------------------------------------------------O (1 = 50.0%) {50.0%}
38466  ... 

Histogram: Net.ConnectionTypeCount3 recorded 43 samples, average = 4.4 (flags = 0x1)
0   ------------------------------------------------------------------------O (15 = 34.9%)
1   --------------------------------------O                                   (8 = 18.6%) {34.9%}
2   ... 
7   ----------------------------------------------------------O               (12 = 27.9%) {53.5%}
8   ... 
12  --------------------------------------O                                   (8 = 18.6%) {81.4%}
13  ... 

Histogram: Net.ConnectionUsedSSLVersionFallback recorded 9 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (9 = 100.0%)
1  ... 

Histogram: Net.DNS_Resolution_And_TCP_Connection_Latency2 recorded 15 samples, average = 144.3 (flags = 0x1)
0    ... 
42   ------------------------O                                                 (1 = 6.7%) {0.0%}
48   ... 
61   ------------------------------------------------O                         (2 = 13.3%) {6.7%}
69   ------------------------------------------------O                         (2 = 13.3%) {20.0%}
78   O                                                                         (0 = 0.0%) {33.3%}
88   ------------------------O                                                 (1 = 6.7%) {33.3%}
100  O                                                                         (0 = 0.0%) {40.0%}
113  ------------------------O                                                 (1 = 6.7%) {40.0%}
128  ------------------------O                                                 (1 = 6.7%) {46.7%}
145  ------------------------O                                                 (1 = 6.7%) {53.3%}
164  ------------------------------------------------------------------------O (3 = 20.0%) {60.0%}
186  ... 
239  ------------------------------------------------O                         (2 = 13.3%) {80.0%}
271  ------------------------O                                                 (1 = 6.7%) {93.3%}
307  ... 

Histogram: Net.HadConnectionType3 recorded 4 samples, average = 5.0 (flags = 0x1)
0   ------------------------------------------------------------------------O (1 = 25.0%)
1   ------------------------------------------------------------------------O (1 = 25.0%) {25.0%}
2   ... 
7   ------------------------------------------------------------------------O (1 = 25.0%) {50.0%}
8   ... 
12  ------------------------------------------------------------------------O (1 = 25.0%) {75.0%}
13  ... 

Histogram: Net.HttpConnectionLatency recorded 12 samples, average = 386.0 (flags = 0x1)
0    ... 
113  ------------------------------------O                                     (1 = 8.3%) {0.0%}
128  O                                                                         (0 = 0.0%) {8.3%}
145  ------------------------------------O                                     (1 = 8.3%) {8.3%}
164  ------------------------------------O                                     (1 = 8.3%) {16.7%}
186  ... 
271  ------------------------------------O                                     (1 = 8.3%) {25.0%}
307  O                                                                         (0 = 0.0%) {33.3%}
348  ------------------------------------------------------------------------O (2 = 16.7%) {33.3%}
394  O                                                                         (0 = 0.0%) {50.0%}
446  ------------------------------------------------------------------------O (2 = 16.7%) {50.0%}
505  ------------------------------------------------------------------------O (2 = 16.7%) {66.7%}
572  ------------------------------------------------------------------------O (2 = 16.7%) {83.3%}
648  ... 

Histogram: Net.HttpJob.TotalTime recorded 13 samples, average = 635.2 (flags = 0x1)
0     ... 
135   ------------------------O                                                 (1 = 7.7%) {0.0%}
160   ... 
318   ------------------------------------------------O                         (2 = 15.4%) {7.7%}
378   O                                                                         (0 = 0.0%) {23.1%}
449   ------------------------------------------------O                         (2 = 15.4%) {23.1%}
533   ------------------------O                                                 (1 = 7.7%) {38.5%}
633   ------------------------------------------------------------------------O (3 = 23.1%) {46.2%}
752   ------------------------------------------------O                         (2 = 15.4%) {69.2%}
894   ------------------------O                                                 (1 = 7.7%) {84.6%}
1062  ------------------------O                                                 (1 = 7.7%) {92.3%}
1262  ... 

Histogram: Net.HttpJob.TotalTimeNotCached recorded 13 samples, average = 635.2 (flags = 0x1)
0     ... 
135   ------------------------O                                                 (1 = 7.7%) {0.0%}
160   ... 
318   ------------------------------------------------O                         (2 = 15.4%) {7.7%}
378   O                                                                         (0 = 0.0%) {23.1%}
449   ------------------------------------------------O                         (2 = 15.4%) {23.1%}
533   ------------------------O                                                 (1 = 7.7%) {38.5%}
633   ------------------------------------------------------------------------O (3 = 23.1%) {46.2%}
752   ------------------------------------------------O                         (2 = 15.4%) {69.2%}
894   ------------------------O                                                 (1 = 7.7%) {84.6%}
1062  ------------------------O                                                 (1 = 7.7%) {92.3%}
1262  ... 

Histogram: Net.HttpJob.TotalTimeSuccess recorded 13 samples, average = 635.2 (flags = 0x1)
0     ... 
135   ------------------------O                                                 (1 = 7.7%) {0.0%}
160   ... 
318   ------------------------------------------------O                         (2 = 15.4%) {7.7%}
378   O                                                                         (0 = 0.0%) {23.1%}
449   ------------------------------------------------O                         (2 = 15.4%) {23.1%}
533   ------------------------O                                                 (1 = 7.7%) {38.5%}
633   ------------------------------------------------------------------------O (3 = 23.1%) {46.2%}
752   ------------------------------------------------O                         (2 = 15.4%) {69.2%}
894   ------------------------O                                                 (1 = 7.7%) {84.6%}
1062  ------------------------O                                                 (1 = 7.7%) {92.3%}
1262  ... 

Histogram: Net.HttpResponseCode recorded 13 samples, average = 200.0 (flags = 0x1)
0    ... 
200  ------------------------------------------------------------------------O (13 = 100.0%) {0.0%}
201  ... 

Histogram: Net.HttpSocketType recorded 13 samples, average = 0.2 (flags = 0x1)
0  ------------------------------------------------------------------------O (12 = 92.3%)
1  O                                                                         (0 = 0.0%) {92.3%}
2  ------O                                                                   (1 = 7.7%) {92.3%}
3  O                                                                         (0 = 0.0%) {100.0%}

Histogram: Net.HttpTimeToFirstByte recorded 13 samples, average = 512.8 (flags = 0x1)
0    ... 
139  --------------O                                                           (1 = 7.7%) {0.0%}
171  ... 
258  -----------------------------O                                            (2 = 15.4%) {7.7%}
317  --------------O                                                           (1 = 7.7%) {23.1%}
389  --------------O                                                           (1 = 7.7%) {30.8%}
477  -----------------------------O                                            (2 = 15.4%) {38.5%}
585  ------------------------------------------------------------------------O (5 = 38.5%) {53.8%}
718  --------------O                                                           (1 = 7.7%) {92.3%}
881  ... 

Histogram: Net.NumDuplicateCookiesInDb recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.RenegotiationExtensionSupported recorded 8 samples, average = 1.0 (flags = 0x1)
0  O                                                                         (0 = 0.0%)
1  ------------------------------------------------------------------------O (8 = 100.0%) {0.0%}
2  O                                                                         (0 = 0.0%) {100.0%}

Histogram: Net.SSLCertVerificationTime recorded 8 samples, average = 0.4 (flags = 0x1)
0  ------------------------------------------------------------------------O (5 = 62.5%)
1  -------------------------------------------O                              (3 = 37.5%) {62.5%}
2  ... 

Histogram: Net.SSL_Connection_Latency recorded 8 samples, average = 342.6 (flags = 0x1)
0    ... 
271  ------------------------------------O                                     (2 = 25.0%) {0.0%}
307  ------------------------------------------------------------------------O (4 = 50.0%) {25.0%}
348  O                                                                         (0 = 0.0%) {75.0%}
394  ------------------O                                                       (1 = 12.5%) {75.0%}
446  ------------------O                                                       (1 = 12.5%) {87.5%}
505  ... 

Histogram: Net.SSL_Connection_Latency_Full_Handshake recorded 8 samples, average = 342.6 (flags = 0x1)
0    ... 
269  ------------------------------------O                                     (2 = 25.0%) {0.0%}
297  ------------------------------------------------------------------------O (4 = 50.0%) {25.0%}
328  ... 
440  ------------------------------------O                                     (2 = 25.0%) {75.0%}
485  ... 

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

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

Histogram: Net.SocketIdleTimeBeforeNextUse_ReusedSocket_TCP recorded 1 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (1 = 100.0%)
1  ... 

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

Histogram: Net.SocketInitErrorCodes_SSL2 recorded 8 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (8 = 100.0%)
1  ... 

Histogram: Net.SocketInitErrorCodes_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketInitErrorCodes_TCP recorded 13 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (13 = 100.0%)
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

Histogram: Net.SocketRequestTime_SSL2 recorded 8 samples, average = 486.9 (flags = 0x1)
0    ... 
348  ------------------------------------------------------------------------O (2 = 25.0%) {0.0%}
394  O                                                                         (0 = 0.0%) {25.0%}
446  ------------------------------------------------------------------------O (2 = 25.0%) {25.0%}
505  ------------------------------------------------------------------------O (2 = 25.0%) {50.0%}
572  ------------------------------------------------------------------------O (2 = 25.0%) {75.0%}
648  ... 

Histogram: Net.SocketRequestTime_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketRequestTime_TCP recorded 12 samples, average = 157.3 (flags = 0x1)
0    ... 
61   ------------------------------------------------O                         (2 = 16.7%) {0.0%}
69   ------------------------------------------------O                         (2 = 16.7%) {16.7%}
78   ... 
113  ------------------------O                                                 (1 = 8.3%) {33.3%}
128  O                                                                         (0 = 0.0%) {41.7%}
145  ------------------------O                                                 (1 = 8.3%) {41.7%}
164  ------------------------------------------------------------------------O (3 = 25.0%) {50.0%}
186  ... 
239  ------------------------------------------------O                         (2 = 16.7%) {75.0%}
271  ------------------------O                                                 (1 = 8.3%) {91.7%}
307  ... 

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

Histogram: Net.SocketType_SSL2 recorded 8 samples, average = 0.0 (flags = 0x1)
0  ------------------------------------------------------------------------O (8 = 100.0%)
1  ... 

Histogram: Net.SocketType_SSLForProxies recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_SSLforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCP recorded 13 samples, average = 0.2 (flags = 0x1)
0  ------------------------------------------------------------------------O (12 = 92.3%)
1  O                                                                         (0 = 0.0%) {92.3%}
2  ------O                                                                   (1 = 7.7%) {92.3%}
3  O                                                                         (0 = 0.0%) {100.0%}

Histogram: Net.SocketType_TCPforHTTPProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCPforHTTPSProxy recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.SocketType_TCPforSOCKS recorded 0 samples (flags = 0x1)
0 ... 

Histogram: Net.TCP_Connection_Latency recorded 15 samples, average = 89.5 (flags = 0x1)
0    ... 
33   --------------------------------------------------------------------O     (3 = 20.0%) {0.0%}
37   O                                                                         (0 = 0.0%) {20.0%}
42   ------------------O                                                       (1 = 6.7%) {20.0%}
48   ... 
61   ------------------------------------------------------O                   (3 = 20.0%) {26.7%}
69   ------------------------------------O                                     (2 = 13.3%) {46.7%}
78   O                                                                         (0 = 0.0%) {60.0%}
88   ------------------O                                                       (1 = 6.7%) {60.0%}
100  ... 
128  ------------------O                                                       (1 = 6.7%) {66.7%}
145  ------------------------------------------------------------------------O (4 = 26.7%) {73.3%}
164  ... 

Histogram: Net.TCP_Connection_Latency_IPv4_No_Race recorded 15 samples, average = 89.5 (flags = 0x1)
0    ... 
33   --------------------------------------------------------------------O     (3 = 20.0%) {0.0%}
37   O                                                                         (0 = 0.0%) {20.0%}
42   ------------------O                                                       (1 = 6.7%) {20.0%}
48   ... 
61   ------------------------------------------------------O                   (3 = 20.0%) {26.7%}
69   ------------------------------------O                                     (2 = 13.3%) {46.7%}
78   O                                                                         (0 = 0.0%) {60.0%}
88   ------------------O                                                       (1 = 6.7%) {60.0%}
100  ... 
128  ------------------O                                                       (1 = 6.7%) {66.7%}
145  ------------------------------------------------------------------------O (4 = 26.7%) {73.3%}
164  ... 

Histogram: Net.Transaction_Latency_Total recorded 13 samples, average = 634.8 (flags = 0x1)
0     ... 
145   ------------------------------------O                                     (1 = 7.7%) {0.0%}
164   ... 
307   ------------------------------------------------------------------------O (2 = 15.4%) {7.7%}
348   ... 
446   ------------------------------------------------------------------------O (2 = 15.4%) {23.1%}
505   O                                                                         (0 = 0.0%) {38.5%}
572   ------------------------------------O                                     (1 = 7.7%) {38.5%}
648   ------------------------------------------------------------------------O (2 = 15.4%) {46.2%}
734   ------------------------------------------------------------------------O (2 = 15.4%) {61.5%}
831   ------------------------------------O                                     (1 = 7.7%) {76.9%}
941   ------------------------------------O                                     (1 = 7.7%) {84.6%}
1065  ------------------------------------O                                     [15185:15192:21874088043:FATAL:url_request_context.cc(121)] Check failed: false. Leaked 1 URLRequest(s). First URL: https://performance.typekit.net/.
(1 = 7.7%) {92.3%}
1206  ... 

Histogram: Net.Transaction_Latency_Total_New_Connection recorded 12 samples, average = 675.3 (flags = 0x1)
0     ... 
307   ------------------------------------------------------------------------O (2 = 16.7%) {0.0%}
348   ... 
446   ------------------------------------------------------------------------O (2 = 16.7%) {16.7%}
505   O                                                                         (0 = 0.0%) {33.3%}
572   ------------------------------------O                                     (1 = 8.3%) {33.3%}
648   ------------------------------------------------------------------------O (2 = 16.7%) {41.7%}
734   ------------------------------------------------------------------------O (2 = 16.7%) {58.3%}
831   ------------------------------------O                                     (1 = 8.3%) {75.0%}
941   ------------------------------------O                                     (1 = 8.3%) {83.3%}
1065  ------------------------------------O                                     (1 = 8.3%) {91.7%}
1206  ... 

Histogram: Net.Transaction_Latency_b recorded 13 samples, average = 277.7 (flags = 0x1)
0    ... 
37   ------------------O                                                       (1 = 7.7%) {0.0%}
42   ... 
145  ------------------------------------------------------------------------O (4 = 30.8%) {7.7%}
164  O                                                                         (0 = 0.0%) {38.5%}
186  ------------------------------------O                                     (2 = 15.4%) {38.5%}
211  ... 
271  ------------------O                                                       (1 = 7.7%) {53.8%}
307  ------------------------------------O                                     (2 = 15.4%) {61.5%}
348  ... 
446  ------------------------------------O                                     (2 = 15.4%) {76.9%}
505  ... 
648  ------------------O                                                       (1 = 7.7%) {92.3%}
734  ... 


</queries>
Received signal 6
 [0x000000531f1e] base::debug::StackTrace::StackTrace()
 [0x000000532418] base::debug::(anonymous namespace)::StackDumpSignalHandler()
 [0x7fb89f5e9340] <unknown>
 [0x7fb89e612cc9] gsignal
 [0x7fb89e6160d8] abort
 [0x00000056c349] base::debug::BreakDebugger()
 [0x0000005405cd] logging::LogMessage::~LogMessage()
 [0x000001c2eb7e] net::URLRequestContext::AssertNoURLRequests()
 [0x000001c2ebc8] net::URLRequestContext::~URLRequestContext()
 [0x000001aec899] TestShellRequestContext::~TestShellRequestContext()
 [0x000001ae3c1f] (anonymous namespace)::IOThread::CleanUp()
 [0x00000055eafd] base::Thread::ThreadMain()
 [0x00000055e361] base::(anonymous namespace)::ThreadFunc()
 [0x7fb89f5e1182] start_thread
 [0x7fb89e6d647d] clone
  r8: 000000000204024d  r9: 00007fb89536db5e r10: 0000000000000008 r11: 0000000000000202
 r12: 0000000000000000 r13: 00007fb89e99b868 r14: 00007fb89536f9c0 r15: 00007fb89536f700
  di: 0000000000003b51  si: 0000000000003b58  bp: 00007fb89f1c03c0  bx: 00007fb89536e650
  dx: 0000000000000006  ax: 0000000000000000  cx: ffffffffffffffff  sp: 00007fb89536ddf8
  ip: 00007fb89e612cc9 efl: 0000000000000202 cgf: 0000000000000033 erf: 0000000000000000
 trp: 0000000000000000 msk: 0000000000000000 cr2: 0000000000000000
