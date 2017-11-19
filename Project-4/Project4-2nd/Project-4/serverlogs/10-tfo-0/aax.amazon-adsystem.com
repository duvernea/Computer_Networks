HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com  with delay  0.0 s
<socket._socketobject object at 0x7f3af730fb40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6261654
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6261654
trying hash: a3550185e64b833fa3aa7109c21dbf61
10.0.0.89 - - [12/Oct/2017 22:18:07] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:18:07] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6261654 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:18:07] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6261654 HTTP/1.1" 200 -
<socket._socketobject object at 0x7f3af730fb40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6071688
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6071688
trying hash: 2f627bd3e899365f2c0f64c82661f0a2
10.0.0.89 - - [12/Oct/2017 22:18:15] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:18:15] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6071688 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:18:15] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=6071688 HTTP/1.1" 200 -
Killed
