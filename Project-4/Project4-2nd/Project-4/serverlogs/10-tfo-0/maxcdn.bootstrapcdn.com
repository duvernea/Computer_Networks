HTTP Running : 8000  from  /home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com  with delay  0.0 s
<socket._socketobject object at 0x7f78af0e6b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:18:10] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:18:10] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0"b\xce\xe4%\xbe\xe6\x9c\xd9\x99\xbc\x8bSE\x81\x96\x83\xaez\x1d\xd3\xda\x9c\xf8\xd51#\xf2\xc0p\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:18:10] " �  �Y�"b��%��ٙ��SE����z�ڜ��1#��p  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:18:10] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x01Y\xe0"b\xaa\xa1\xab\xca\xcf~)\x05\xa5\x1a\x942\xeb\xc5y\xb3\x06\x87\xde?F8=\xf4\xbd\xf9%Q\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:18:10] " �  �Y�"b�����~)��2��y���?F8=���%Q  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:18:10] code 400, message Bad request syntax ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0"b\xafq\x8f;\xb5\x9c\xda\xa6\xa0\xf3\xb6\xe7')
10.0.0.89 - - [12/Oct/2017 22:18:10] "  U  Q Y�"b�q�;��ڦ���" 400 -
10.0.0.89 - - [12/Oct/2017 22:18:17] code 400, message Bad request syntax ('\x16\x03\x01\x00\xbd\x01\x00\x00\xb9\x03\x02Y\xe0"iS\xdb(\xed\x11\x15\x01-\xe76\xfb\\\xcc{]d\xc2\xa2\xcc\x84\'i\x0e/\xd6\x88\xe2\x9e\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:18:17] " �  �Y�"iS�(�-�6�\�{]d¢̄'i/ֈ�  H�" 400 -
<socket._socketobject object at 0x7f78af0e6b40>
/home/mininet/Projects/Project4-2nd/Project-4/myURLS2/maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js
/bootstrap/3.2.0/js/bootstrap.min.js
10.0.0.89 - - [12/Oct/2017 22:18:17] "GET /bootstrap/3.2.0/js/bootstrap.min.js HTTP/1.1" 200 -
10.0.0.89 - - [12/Oct/2017 22:18:17] code 400, message Bad request version ('R\x97\xe5\xfc\xab\x95]_g\x00\x00H\xc0')
10.0.0.89 - - [12/Oct/2017 22:18:17] " �  �Y�"iv�j� �m����hpH��R�����]_g  H�" 400 -
10.0.0.89 - - [12/Oct/2017 22:18:17] code 400, message Bad HTTP/0.9 request type ('\x16\x03\x00\x00U\x01\x00\x00Q\x03\x00Y\xe0"iUS\x8as\x9fGv;w\x1a\xd0mjHJ\xea')
10.0.0.89 - - [12/Oct/2017 22:18:17] "  U  Q Y�"iUS�s�Gv;w�mjHJ�	x��cx����  * � � � 9 8 � 5 E D f 3 2 � A   /  �� " 400 -
Killed
