HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com  with delay  0.0 s
10.0.0.89 - - [12/Oct/2017 22:23:22] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0#\x9a#|\xcc\\\x85\xa0\xd7\xe2`\xa6w\x13\x1c\xc6\xae\x81}\xd3\xbd\xc4\xd5\x87\x96\xa9Ny\xf5L\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:23:22] " �  �Y�#�#|�\����`�wƮ�}ӽ�Շ��Ny�L  H�" 400 -
<socket._socketobject object at 0x7fa83332ab40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:23:22] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:23:22] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0#\x9aJ<\x91\x12\xcb\xd9\xc2\x9fJ\xf2hoC\xf6]\xc2\xc8Ew\xb5\x9e\xfa\xcc\x05\xc3!O\xec\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:23:22] " �  �Y�#�J<���J�hoC�]��Ew�����!O�  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:23:22] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#\x9a\xa0\x1d\xdc\xa27\x07\\\xa1?\xc5r\x07z\xabb"\xc9\xe0Q\xc1\xa2\x89e#\x1a\xcd\xf5\xe9\x00\x00*\x00\xff\x00\x88\x00\x87\x009\x008\x00\x84\x005\x00E\x00D\x00f\x003\x002\x00\x96\x00A\x00\x05\x00\x04\x00/\x00\x16\x00\x13\xfe\xff\x00')
10.0.0.89 - - [12/Oct/2017 22:23:22] "  U  Q Y�#��ܢ7\�?�rz�b"��Q���e#���  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
10.0.0.89 - - [12/Oct/2017 22:23:33] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0#\xa5LV\xd1\x90F\xe4\xb9\x17\xb7g\xed\xcd~g\x95!\xcdM\x0e\xdf4\x9ab0\xeaWl\x1b\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:23:33] " �  �Y�#�LVѐF��g��~g�!�M�4�b0�Wl  H�" 400 -
<socket._socketobject object at 0x7fa83332ab40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:23:33] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:23:33] code 400, message Bad HTTP/0.9 request type ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0#\xa5\xc6\xd3\xda=\xd0\x0f\x8b\xb93\xa3\x1d{')
10.0.0.89 - - [12/Oct/2017 22:23:33] " �  �Y�#����=���3�{	A:]���Q�*%�9�-6  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:23:33] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0#\xa5\x8e\x03q\xbc9hoe\xf6\xeb?\x02S\xec\x98L\xae\x16\xf1\xb0\x8eco)\x00\xaa\x82h\x00\x00*\x00\xff\x00\x88\x00\x87\x009\x008\x00\x84\x005\x00E\x00D\x00f\x003\x002\x00\x96\x00A\x00\x05\x00\x04\x00/\x00\x16\x00\x13\xfe\xff\x00')
10.0.0.89 - - [12/Oct/2017 22:23:33] "  U  Q Y�#��q�9hoe��?S�L��co) ��h  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
Killed
