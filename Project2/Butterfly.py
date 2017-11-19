# Butterfly Topology:
# 
#
#
#
#                           15   16
#                            \   / 
#                      ----   -9-   ----
#                     /    \ /   \ /    \
#                     8     2     3     10
#                     |      \   /      |
#                      \      \ /      /
#                       -4 --- 1 --- 5-
#                      /      / \      \
#                     |      /   \      |
#                     13    6     7     11
#                     \    / \   / \    /
#                      ----   -14   ----
#
#
#
#
#
#
#
#


topo = { 1 : [2, 3, 4, 5, 6, 7], 
         2 : [1, 9, 8],
         3 : [1, 9, 10], 
         4 : [8, 1, 13],
         5 : [10, 1, 11],
         6 : [1, 14, 13],
         7 : [1, 11, 14],
         8 : [2, 4],
         9 : [15, 2, 3, 16],
         10 : [3, 5],
         11 : [5, 7],
         13 : [4, 6],
         14 : [6, 7],
         15 : [9],
         16 : [9]
 }
