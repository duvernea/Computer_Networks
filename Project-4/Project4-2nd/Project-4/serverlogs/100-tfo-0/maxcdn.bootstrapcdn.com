HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com  with delay  0.0 s
10.0.0.89 - - [12/Oct/2017 22:20:44] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0"\xfb\x00\x00fi\x1f\xd1\xdc\xee\x80GLsSd\x8f\xf1k\xa8b\xb8U\x81f$\xef\xfa\xfaV\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:20:44] " �  �Y�"�  fi���GLsSd��k�b�U�f$���V  H�" 400 -
<socket._socketobject object at 0x7fdc668c1b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:20:44] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:21:04] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0"\xfc(8\x18\xb0q\xdea\xc2\xff\xe3\x96\xcb7T\xf2A\xbdz\xc6\x93\'\xe9\xaep\xabM\xbd\xd7\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:21:04] " �  �Y�"�(8�q�a����7T�A�zƓ'�p�M��  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:21:04] code 400, message Bad HTTP/0.9 request type ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#\x10\x1c\xddR]\xf2\x82\xd3\xea2\x88\xdd\xf9_$r\x10')
10.0.0.89 - - [12/Oct/2017 22:21:04] "  U  Q Y�#�R]���2���_$r��p2��k�˶  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
10.0.0.89 - - [12/Oct/2017 22:21:21] code 400, message Bad HTTP/0.9 request type ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0#!E\xd2#\x01e\x96\xf5@\xdb7\xd5\xd9\x8a\xc4')
10.0.0.89 - - [12/Oct/2017 22:21:21] " �  �Y�#!E�#e��@�7�ي���)OJJ�o��.ud  H�" 400 -
<socket._socketobject object at 0x7fdc668c1b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:21:21] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:21:21] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0#!\xe1\xc3\xdaV\xd7F\x08\x97\xaf(\x08`\x04\xae\x19\xbbb\xe5RM\xb58\x9b')
10.0.0.89 - - [12/Oct/2017 22:21:21] " �  �Y�#!���V�F��(`��b�RM�8�" 400 -
10.0.0.89 - - [12/Oct/2017 22:21:22] code 400, message Bad HTTP/0.9 request type ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#"7\x02\xfc\xcf\xe2_\xe2\xdc\x11h\x88|\xf2\xc1wx\xfe\x03U\xc1\xd5\x01\xf6\x05\xf7\xa4\xd7')
10.0.0.89 - - [12/Oct/2017 22:21:22] "  U  Q Y�#"7���_��h�|��wx�U������  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
Killed
