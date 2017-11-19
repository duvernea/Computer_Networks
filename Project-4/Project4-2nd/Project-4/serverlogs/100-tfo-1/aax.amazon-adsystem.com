HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com  with delay  0.0 s
<socket._socketobject object at 0x7f4a8d669b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1543295
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1543295
trying hash: 19d36d12e6cbd133761ef5bf73a625d9
10.0.0.89 - - [12/Oct/2017 22:24:26] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:24:26] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1543295 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:24:26] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=1543295 HTTP/1.1" 200 -
<socket._socketobject object at 0x7f4a8d669b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/aax.amazon-adsystem.com/e/dtb/bid
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=9385138
/e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=9385138
trying hash: 28fe7a7516cda05a2c8b681888058232
10.0.0.89 - - [12/Oct/2017 22:24:39] code 404, message file not found
10.0.0.89 - - [12/Oct/2017 22:24:39] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=9385138 HTTP/1.1" 404 -
10.0.0.89 - - [12/Oct/2017 22:24:39] "GET /e/dtb/bid?src=3185&u=http%3A%2F%2Fwww.ajc.com%2F&cb=9385138 HTTP/1.1" 200 -
Killed
