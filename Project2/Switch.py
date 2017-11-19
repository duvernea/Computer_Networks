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
      
    def send_initial_messages(self):
        # initially all links are set to active
        for link in self.links:
            msg = Message(self.root, self.distance, self.switchID, link, True)
            self.send_message(msg)
        return
        
    def process_message(self, message):
        # DEBUGGING - COMMENTED OUT
        # print message
        # print "switch at start of process_message"
        # print self
            
        # message received from neighbor with lower root -> update root
        if (message.root < self.root ):
            self.distance = message.distance + 1
            self.root = message.root
            self.pathThrough = message.origin
            # re-activate links
            if len(self.activeLinks) < len(self.links):
                self.activeLinks = list(self.links)

            for link in self.activeLinks:
                # note: if use link != self.pathThrough, other topologies are solved correctly
                if link > self.pathThrough:
                    msg = Message(self.root, self.distance, self.switchID, link, True)
                    self.send_message(msg)

        elif message.root == self.root:
            # both switches think root is the same
            if (message.distance + 1) == self.distance:
                # if distance is same and root is same, don't need one of the links
                if 1==1:
                    # if message from origin has lower ID, use that
                    if message.origin < self.pathThrough:
                        msg = Message(self.root, self.distance, self.switchID, self.pathThrough, False)
                        self.send_message(msg)
                        self.activeLinks.remove(self.pathThrough)
                        self.pathThrough = message.origin
                    elif message.origin > self.pathThrough:
                        msg = Message(self.root, self.distance, self.switchID, message.origin, False)
                        self.send_message(msg)
                        if message.origin in self.activeLinks:
                            self.activeLinks.remove(message.origin)
                return
            elif message.distance + 1 < self.distance:
                
                self.distance = message.distance + 1
                if self.pathThrough in self.activeLinks:
                    msg = Message(self.root, self.distance, self.switchID, self.pathThrough, False)
                    self.send_message(msg)
                    self.activeLinks.remove(self.pathThrough)
                self.pathThrough = message.origin
                for link in self.activeLinks:
                   msg = Message(self.root, self.distance, self.switchID, link, True)
                   self.send_message(msg)

            elif message.distance + 1 > self.distance:
                if message.origin in self.activeLinks:
                    msg = Message(self.root, self.distance, self.switchID, message.origin, False)
                    self.send_message(msg)
                    self.activeLinks.remove(message.origin)
        # DEBUGGING        
        # print "swtich at end of process_message"
        # print self
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
