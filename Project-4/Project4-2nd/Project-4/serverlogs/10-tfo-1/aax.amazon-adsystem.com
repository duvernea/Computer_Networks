HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com  with delay  0.0 s
<socket._socketobject object at 0x7f07b28d4b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1992578
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1992578
trying hash: bbd7e8b76ecc50846274348ca1527b63
10.0.0.89 - - [12/Oct/2017 22:22:14] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:22:14] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1992578 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:22:14] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1992578 HTTP/1.1" 200 -
<socket._socketobject object at 0x7f07b28d4b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=2176900
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=2176900
trying hash: 203a7779a18c2bf16ac922e7c4781d87
10.0.0.89 - - [12/Oct/2017 22:22:21] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:22:21] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=2176900 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:22:21] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=2176900 HTTP/1.1" 200 -
Killed
