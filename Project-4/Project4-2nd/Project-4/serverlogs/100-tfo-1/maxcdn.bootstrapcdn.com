HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com  with delay  0.0 s
<socket._socketobject object at 0x7fe7c20b0b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:24:31] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:24:31] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0#\xdf\xca\xc5\x14\xd5\xe2\xeb\x87 \x17\x91\r9\x03\r\xd7\xf4\xc4\x000\xf9\x99Z\xb9a"r\xc3\x9f\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:24:31] " �  �Y�#������ �9��� 0��Z�a"rß  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:24:32] code 400, message Bad HTTP/0.9 request type ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0#\xdf\xdbo9\xac\xcb\x90\xc2\xf0\xcf')
10.0.0.89 - - [12/Oct/2017 22:24:32] " �  �Y�#��o9�ː���	��x�����T$�v�  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:24:32] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#\xe0\xd9\xfem\xaa\xbb\x98W\xea\xba\xa5S\\\xb0\x10}\x98\xb7\x9aD\xee\xc3e\xab\xd0\xdc\x08\xddA\x00\x00*\x00\xff\x00\x88\x00\x87\x009\x008\x00\x84\x005\x00E\x00D\x00f\x003\x002\x00\x96\x00A\x00\x05\x00\x04\x00/\x00\x16\x00\x13\xfe\xff\x00')
10.0.0.89 - - [12/Oct/2017 22:24:32] "  U  Q Y�#���m���W꺥S\�}���D��e����A  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
10.0.0.89 - - [12/Oct/2017 22:24:45] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0#\xedPUz\xac|(/\x07\xcb\xd9\xdb\x8b\x10_\x96v\xb0\xa2FB\x7f\x02jk\x84\x98\xf3\x19\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:24:45] " �  �Y�#�PUz�|(/��ۋ_�v��FBjk���  H�" 400 -
<socket._socketobject object at 0x7fe7c20b0b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:24:45] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:24:45] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0#\xed"G\x0f\xd9HC@m\x14\x1en\xe4?\xac,\x92\x08d.]\xa0\x98\xfd%\xff\xd3\xf1\xbc\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:24:45] " �  �Y�#�"G�HC@mn�?�,�d.]���%���  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:24:45] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#\xedt\x9c\x06\x86\x06\x18\xf4.\x0ee\x8d\xc1\x1c\xd6j\xea\xe0*\xc0\x89\xe5\x03\xfa8\xa5\xe2l\x94\x00\x00*\x00\xff\x00\x88\x00\x87\x009\x008\x00\x84\x005\x00E\x00D\x00f\x003\x002\x00\x96\x00A\x00\x05\x00\x04\x00/\x00\x16\x00\x13\xfe\xff\x00')
10.0.0.89 - - [12/Oct/2017 22:24:45] "  U  Q Y�#�t���.e���j��*����8��l�  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
Killed
