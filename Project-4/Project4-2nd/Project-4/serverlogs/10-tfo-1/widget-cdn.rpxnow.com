HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com  with delay  0.0 s
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/load/login.cmgdigital.com
/load/login.cmgdigital.com
10.0.0.89 - - [12/Oct/2017 22:22:15] "GET /load/login.cmgdigital.com HTTP/1.1" 200 -
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/translations/login/en-US
/translations/login/en-US
10.0.0.89 - - [12/Oct/2017 22:22:15] "GET /translations/login/en-US HTTP/1.1" 200 -
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/translations/share/en-US
/translations/share/en-US
10.0.0.89 - - [12/Oct/2017 22:22:16] "GET /translations/share/en-US HTTP/1.1" 200 -
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/manifest/capture:login:share
/manifest/capture:login:share?version=release%2F1.116.0_widgets_767
/manifest/capture:login:share?version=release%2F1.116.0_widgets_767
trying hash: a22cc0ae37d42a0fa25e6a3ccbe8af68
10.0.0.89 - - [12/Oct/2017 22:22:16] "GET /manifest/capture:login:share?version=release%2F1.116.0_widgets_767 HTTP/1.1" 200 -
----------------------------------------
Exception happened during processing of request from ('10.0.0.89', 37469)
Traceback (most recent call last):
  File "/usr/lib/python2.7/SocketServer.py", line 295, in _handle_request_noblock
    self.process_request(request, client_address)
  File "/home/mininet/Projects/Project4-2nd/Project-4/tfo-test/http_tfo.py", line 57, in process_request
    return SocketServer.TCPServer.process_request(self, request, client_address)
  File "/usr/lib/python2.7/SocketServer.py", line 321, in process_request
    self.finish_request(request, client_address)
  File "/usr/lib/python2.7/SocketServer.py", line 334, in finish_request
    self.RequestHandlerClass(request, client_address, self)
  File "/usr/lib/python2.7/SocketServer.py", line 651, in __init__
    self.finish()
  File "/usr/lib/python2.7/SocketServer.py", line 710, in finish
    self.wfile.close()
  File "/usr/lib/python2.7/socket.py", line 279, in close
    self.flush()
  File "/usr/lib/python2.7/socket.py", line 303, in flush
    self._sock.sendall(view[write_offset:write_offset+buffer_size])
error: [Errno 32] Broken pipe
----------------------------------------
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/load/login.cmgdigital.com
/load/login.cmgdigital.com
10.0.0.89 - - [12/Oct/2017 22:22:22] "GET /load/login.cmgdigital.com HTTP/1.1" 200 -
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/translations/login/en-US
/translations/login/en-US
10.0.0.89 - - [12/Oct/2017 22:22:24] "GET /translations/login/en-US HTTP/1.1" 200 -
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/translations/share/en-US
/translations/share/en-US
10.0.0.89 - - [12/Oct/2017 22:22:24] "GET /translations/share/en-US HTTP/1.1" 200 -
<socket._socketobject object at 0x7f1b5cd54bb0>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/widget-cdn.rpxnow.com/manifest/capture:login:share
/manifest/capture:login:share?version=release%2F1.116.0_widgets_767
/manifest/capture:login:share?version=release%2F1.116.0_widgets_767
trying hash: a22cc0ae37d42a0fa25e6a3ccbe8af68
10.0.0.89 - - [12/Oct/2017 22:22:24] "GET /manifest/capture:login:share?version=release%2F1.116.0_widgets_767 HTTP/1.1" 200 -
Killed
