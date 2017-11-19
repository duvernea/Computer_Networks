# Project 2 for OMS6250
#
# This defines a Switch that can can send and receive spanning tree 
# messages to converge on a final loop free forwarding topology.  This
# class is a child class (specialization) of the StpSwitch class.  To 
# remain within the spirit of the project, the only inherited members
# functions the student is permitted to use are:
#
# self.switchID                   (the ID number of this switch object)
# self.links                      (the list of swtich IDs connected to this switch object)
# self.send_message(Message msg)  (Sends a Message object to another switch)
#
# Student code MUST use the send_message function to implement the algorithm - 
# a non-distributed algorithm will not receive credit.
#
# Student code should NOT access the following members, otherwise they may violate
# the spirit of the project:
#
# topolink (parameter passed to initialization function)
# self.topology (link to the greater topology structure used for message passing)
#
# Copyright 2016 Michael Brown, updated by Kelly Parks
#           Based on prior work by Sean Donovan, 2015
			    												

from Message import *
from StpSwitch import *

class Switch(StpSwitch):

    def __init__(self, idNum, topolink, neighbors):    
        # Invoke the super class constructor, which makes available to this object the following members:
        # -self.switchID                   (the ID number of this switch object)
        # -self.links                      (the list of swtich IDs connected to this switch object)
        super(Switch, self).__init__(idNum, topolink, neighbors)
        
        # initialize root, distance to root to be 0 (itself), initial pathThrough to be self
        self.root = idNum
        self.distance = 0
        self.pathThrough = idNum

        # initialize active links to be equal to all links
        self.activeLinks = list(self.links)
        self.children = []
        
      
    def send_initial_messages(self):
        for link in self.links:
            msg = Message(self.root, self.distance, self.switchID, link, True)
            self.send_message(msg)
        return
        
    def process_message(self, message):
        print message
        print "switch at start of process_message"
        print self

        if message.pathThrough == True:
            if message.origin not in self.children:
                self.children.append(message.origin)
        
        if message.root == self.root and message.distance == self.distance and message.pathThrough == False:
            if message.origin in self.activeLinks:
                self.activeLinks.remove(message.origin)
            if message.origin in self.children:
                self.children.remove(message.origin)

        # message received from neighbor with lower root
        if message.root < self.root:
 
            # re-establish links
            self.activeLinks = list(self.links)
           
            # distribute messages to links
            for link in self.links:
                msg = Message(message.root, message.distance + 1, self.switchID, link, False)
                self.send_message(msg)

            # reset list of children
            
            # update self
            self.distance = message.distance + 1
            self.root = message.root
            oldPathThrough = self.pathThrough
            self.pathThrough = message.origin

            # send message to old pathThrough
            msg = Message(self.root, self.distance, self.switchID, oldPathThrough, False)
            self.send_message(msg)

#            # re-establish links
#            self.activeLinks = list(self.links)

        # message received from neighbor with same root
        elif message.root == self.root:
            previousPathThrough = self.pathThrough

            # distance to root less than or equal through 2 paths
            if message.distance + 1 <= self.distance:
                #if message.origin < self.pathThrough:
                    # send message to old pathThrough
                    if message.origin < self.pathThrough:
                        msg = Message(self.root, self.distance, self.switchID, previousPathThrough, False)
                        self.send_message(msg)
                    if previousPathThrough in self.activeLinks:
                        self.activeLinks.remove(previousPathThrough)
                    self.pathThrough = message.origin
                    # send message to new pathThrough
                    msg = Message(self.root, self.distance, self.switchID, message.origin, True)
                    self.send_message(msg)
                    return
            
            # distance to root longer through messenger
            elif message.distance + 1 > self.distance:
                if message.origin in self.activeLinks:
                    msg = Message(self.root, self.distance, self.switchID, message.origin, False)
                    self.send_message(msg)
                    self.activeLinks.remove(message.origin)
        print "swtich at end of process_message"
        print self
        return
        
    def generate_logstring(self):
        self.activeLinks.sort()
        logstring = ""
        for i,link in enumerate(self.activeLinks):
            logstring += str(self.switchID) + " - " + str(link)
            if (i < len(self.activeLinks)-1):
                logstring += ", " 
        return logstring

    def __repr__(self):
        return 'Switch (%s) attributes:\n   ' % id(self) +  '\n   '.join(['%s:%s' % (k,v) for k,v in self.__dict__.iteritems()])
