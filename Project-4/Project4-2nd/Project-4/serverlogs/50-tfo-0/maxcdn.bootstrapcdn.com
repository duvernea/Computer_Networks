HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com  with delay  0.0 s
10.0.0.89 - - [12/Oct/2017 22:19:05] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0"\x99\x866\xd4\x14Z\xb5\xf3\x9d\xe1\xcb\xfa2\xddA`i$\xc4\xbb\x90\x15mZ\xec\xe2\x18\xee0\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:19:05] " �  �Y�"��6�Z�����2�A`i$Ļ�mZ���0  H�" 400 -
<socket._socketobject object at 0x7fdc59545b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:19:05] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:19:05] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0"\x99\xfdnd\xd6R\xfd\xc2Wf\x7fO\xf0\xf5\xa3c\xec\xfb\x12\x1e2S\x05\x02\xf0\xff\xc4E\x08\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:19:05] " �  �Y�"��nd�R��WfO���c��2S���E  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:19:05] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0"\x99v\xa40\x81\xcf\xed\xaa1+\xa3\xf0&\x86\xd8\xfc\x13\x95~jg\xad\xb8\xba\xc7\x84\x1d$\xa3\x00\x00*\x00\xff\x00\x88\x00\x87\x009\x008\x00\x84\x005\x00E\x00D\x00f\x003\x002\x00\x96\x00A\x00\x05\x00\x04\x00/\x00\x16\x00\x13\xfe\xff\x00')
10.0.0.89 - - [12/Oct/2017 22:19:05] "  U  Q Y�"�v�0����1+��&����~jg���Ǆ$�  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
10.0.0.89 - - [12/Oct/2017 22:19:15] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0"\xa3(\x8c\xb6\xfeVb\x96\xe6\x93\xcd\xb1\xa9q\x8d\xfde\x1e\x95\xf2S\x17\xb1d\x152p6')
10.0.0.89 - - [12/Oct/2017 22:19:15] " �  �Y�"�(���Vb��ͱ�q��e��S�d2p6" 400 -
<socket._socketobject object at 0x7fdc59545b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:19:15] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:19:15] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0"\xa3\xf5\xb1\xc8"\x01\xb0#e^\x11CD\x93\x7f\xe9G\x8e\xa3\xa5\x96u\x01(P\x1a')
10.0.0.89 - - [12/Oct/2017 22:19:15] " �  �Y�"����"�#e^CD��G����u(P" 400 -
10.0.0.89 - - [12/Oct/2017 22:19:15] code 400, message Bad request version ('\x14{\xf3\x93\xf0\xca}\xf2h\x00\x00*\x00\xff\x00\x88\x00\x87\x009\x008\x00\x84\x005\x00E\x00D\x00f\x003\x002\x00\x96\x00A\x00\x05\x00\x04\x00/\x00\x16\x00\x13\xfe\xff\x00')
10.0.0.89 - - [12/Oct/2017 22:19:15] "  U  Q Y�"�g�w��{���`c����s	{���}�h  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
Killed
