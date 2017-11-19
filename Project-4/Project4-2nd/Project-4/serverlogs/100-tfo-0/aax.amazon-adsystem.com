HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com  with delay  0.0 s
<socket._socketobject object at 0x7f3696929b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4596276
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4596276
trying hash: 1c14bfbb69903acc8c5b7af14f0e58a4
10.0.0.89 - - [12/Oct/2017 22:20:22] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:20:22] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4596276 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:20:22] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4596276 HTTP/1.1" 200 -
<socket._socketobject object at 0x7f3696929b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4456191
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4456191
trying hash: e3b0af16c94e0174b56f52ff050a7ef0
10.0.0.89 - - [12/Oct/2017 22:21:14] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:21:14] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4456191 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:21:14] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=4456191 HTTP/1.1" 200 -
Killed
