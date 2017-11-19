import os

for f in os.listdir("."):
    if f.endswith(".txt") and f != "out.txt":
        fn = f.split(".txt")[0]
        print "========= Running test: {} =========".format(fn)
        os.system("python run_spanning_tree.py {} out.txt".format(fn))
        print "diff: ", os.system("diff -ur out.txt {}.txt".format(fn))
        print '================== done ======================'
