HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com  with delay  0.0 s
10.0.0.89 - - [12/Oct/2017 22:22:16] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0#X\x1ay\x9ed\xf1\x99\x17&\xae\x1dC\x1f\x85\x91\xd5\xef\xda\xe0\x17(\x11\xce\xf6.\xed\xa7\xbf#\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:22:16] " �  �Y�#Xy�d�&�C������(��.���#  H�" 400 -
<socket._socketobject object at 0x7f3fe5f93b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:22:16] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:22:16] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0#X\xed\x8a\xf0\x0ev\x98\x84\xf5\xcd\x1al\xaddb\xbb\x8e\xf9\x976\xe4=}w\xd2\xc3\xe8d\xf8\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:22:16] " �  �Y�#X��v����l�db����6�=}w���d�  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:22:16] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#X\xfdF\xe4h\x12\xca]\x10~<\x08\x8e\xa4\x8dR#L_\xe8\xf2x')
10.0.0.89 - - [12/Oct/2017 22:22:16] "  U  Q Y�#X�F�h�]~<���R#L_��x" 400 -
<socket._socketobject object at 0x7f3fe5f93b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:22:25] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:22:25] code 400, message Bad request syntax ("\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0#a\xd8\xc3\x02Avz\x06\xef\xf3\x03\xb1\xb3\xb3\xdf'\xf4\x15\x04\xb7Hc\x80\xf5m\x03\x90\x02\xb9\x00\x00H\xc0")
10.0.0.89 - - [12/Oct/2017 22:22:25] " �  �Y�#a��Avz������'��Hc��m��  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:22:25] code 400, message Bad HTTP/0.9 request type ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0#a\xc6\xd3\x058i\xe3E\x88\x02+\xc9"z\x9e\x008')
10.0.0.89 - - [12/Oct/2017 22:22:25] " �  �Y�#a��8i�E�+�"z� 8[h��G�\���  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:22:25] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#a\x97V\xf7\x80\xa3+\x99X5\xa4\xe5+\x1d\xb8(\xf5BV\xa4\xb9\xb2<VEC\xb6Q7\x00\x00*\x00\xff\x00\x88\x00\x87\x009\x008\x00\x84\x005\x00E\x00D\x00f\x003\x002\x00\x96\x00A\x00\x05\x00\x04\x00/\x00\x16\x00\x13\xfe\xff\x00')
10.0.0.89 - - [12/Oct/2017 22:22:25] "  U  Q Y�#a�V���+�X5��+�(�BV���<VEC�Q7  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
Killed
