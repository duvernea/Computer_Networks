# Star Topology:
# 
#
#                     14                15
#                      \               /
#                       \             /
#                        8           9
#                         \         /       
#                          \       /     
#                           2     3       
#                            \   /        
#                             \ /        
#          19 --- 13 --- 4 --- 1 --- 5 --- 10 --- 16
#                             / \         
#                            /   \       
#                           6     7        
#                          /       \      
#                         /         \     
#                        12          11
#                       /             \
#                      /               \
#                     18                17
#
#
#
#


topo = { 1 : [2, 3, 4, 5, 6, 7], 
         2 : [1, 8],
         3 : [1, 9], 
         4 : [1, 13],
         5 : [10, 1],
         6 : [1, 12],
         7 : [1, 11],
         8 : [2, 14],
         9 : [3, 15],
         10 : [5, 16],
         11 : [7, 17],
         12 : [6, 18],
         13 : [19, 4],
         14 : [8],
         15 : [9],
         16 : [10],
         17 : [11],
         18 : [12],
         19 : [13] }
