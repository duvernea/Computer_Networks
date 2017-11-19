HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/events.accessatlanta.com  with delay  0.0 s
<socket._socketobject object at 0x7fddceb23b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/events.accessatlanta.com/api/v1/events
/api/v1/events?date_format=F+j&count=1&tag=popular&callback=HPEventCallback
/api/v1/events?date_format=F+j&count=1&tag=popular&callback=HPEventCallback
trying hash: 9008503bde1be668ff51b6f691d5a1a3
10.0.0.89 - - [12/Oct/2017 22:24:28] "GET /api/v1/events?date_format=F+j&count=1&tag=popular&callback=HPEventCallback HTTP/1.1" 200 -
<socket._socketobject object at 0x7fddceb23b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/events.accessatlanta.com/image
/image?method=image.icrop&context=event.image&id=56905&w=220&h=160
/image?method=image.icrop&context=event.image&id=56905&w=220&h=160
trying hash: 29a91f1fa99687a1e3786d993b93fc5f
10.0.0.89 - - [12/Oct/2017 22:24:28] "GET /image?method=image.icrop&context=event.image&id=56905&w=220&h=160 HTTP/1.1" 200 -
<socket._socketobject object at 0x7fddceb23b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/events.accessatlanta.com/api/v1/events
/api/v1/events?date_format=F+j&count=1&tag=popular&callback=HPEventCallback
/api/v1/events?date_format=F+j&count=1&tag=popular&callback=HPEventCallback
trying hash: 9008503bde1be668ff51b6f691d5a1a3
10.0.0.89 - - [12/Oct/2017 22:24:41] "GET /api/v1/events?date_format=F+j&count=1&tag=popular&callback=HPEventCallback HTTP/1.1" 200 -
<socket._socketobject object at 0x7fddceb23b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/events.accessatlanta.com/image
/image?method=image.icrop&context=event.image&id=56905&w=220&h=160
/image?method=image.icrop&context=event.image&id=56905&w=220&h=160
trying hash: 29a91f1fa99687a1e3786d993b93fc5f
10.0.0.89 - - [12/Oct/2017 22:24:42] "GET /image?method=image.icrop&context=event.image&id=56905&w=220&h=160 HTTP/1.1" 200 -
Killed
