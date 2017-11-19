# Project 3 for CS 6250: Computer Networks
#
# This defines a DistanceVector (specialization of the Node class)
# that can run the Bellman-Ford algorithm. The TODOs are all related 
# to implementing BF. Students should modify this file as necessary,
# guided by the TODO comments and the assignment instructions. This 
# is the only file that needs to be modified to complete the project.
#
# Student code should NOT access the following members, otherwise they may violate
# the spirit of the project:
#
# topolink (parameter passed to initialization function)
# self.topology (link to the greater topology structure used for message passing)
#
# Copyright 2017 Michael D. Brown
# Based on prior work by Dave Lillethun, Sean Donovan, and Jeffrey Randow.
        											
from Node import *
from helpers import *

class DistanceVector(Node):
    
    def __init__(self, name, topolink, outgoing_links, incoming_links):
        ''' Constructor. This is run once when the DistanceVector object is
        created at the beginning of the simulation. Initializing data structure(s)
        specific to a DV node is done here.'''

        super(DistanceVector, self).__init__(name, topolink, outgoing_links, incoming_links)

        #TODO: Create any necessary data structure(s) to contain the Node's internal state / distance vector data    
        self.routing_table = {}
        self.routing_table[self.name] = 0
        # for neighbor in self.outgoing_links:
            # pass
            # self.routing_table[self.name][neighbor.name] = neighbor.weight
            # self.routing_table[neighbor.name] = {}
            # self.routing_table[neighbor.name][self.name] = neighbor.weight

    def __repr__(self):
        return """
        Node attributes --
        Name: {name}
        Incoming Links: {incoming}
        Neighbors: {neighbor}
        Topology: {topo}
        Messages: {messages}
        """.format(name = self.name,
            incoming = self.incoming_links,
            neighbor = self.neighbor_names,
            topo = self.topology,
            messages = self.messages)        


    def send_initial_messages(self):
        ''' This is run once at the beginning of the simulation, after all
        DistanceVector objects are created and their links to each other are
        established, but before any of the rest of the simulation begins. You
        can have nodes send out their initial DV advertisements here. 

        Remember that links points to a list of Neighbor data structure.  Access
        the elements with .name or .weight '''
        # print "sending initial messages for node ", self.name

        for neighbor in self.incoming_links:
            msg = (self.name, self.name, 0)
            self.send_msg(msg, neighbor.name)

        # TODO - Each node needs to build a message and send it to each of its neighbors
        # HINT: Take a look at the skeleton methods provided for you in Node.py

        # create array of messages
        # messages = []
        # for neighbor in self.incoming_links:
        #     # msg format (origin, destination, distance)
        #     msg = (self.name, neighbor.name, neighbor.weight)
        #     messages.append(msg)

        # # send each message to each neighbor
        # for neighbor in self.incoming_links:
        #     for message in messages:
        #         self.send_msg(message, neighbor.name)

    def process_BF(self):
        ''' This is run continuously (repeatedly) during the simulation. DV
        messages from other nodes are received here, processed, and any new DV
        messages that need to be sent to other nodes as a result are sent. '''

        # Implement the Bellman-Ford algorithm here.  It must accomplish two tasks below:
        # TODO 1. Process queued messages

        # Message origin, vector node, distance
        # if the vector node exists, get the distance to it
        updateFlag = False

        # for each message in queue
        for msg in self.messages:
            # Message origin (neighbor) needs to be added to table
            if msg[0] not in self.routing_table:
                for neighbor in self.outgoing_links:
                    if neighbor.name == msg[0]:
                        self.routing_table[msg[0]] = int(neighbor.weight) + msg[2]
                        updateFlag = True
                        self.send_messages()
            # Message distance vector needs to be added to table
            if msg[1] not in self.routing_table:
                for neighbor in self.outgoing_links:
                    if neighbor.name == msg[0]:
                        self.routing_table[msg[1]] = int(neighbor.weight) + msg[2]
                        updateFlag = True
                        self.send_messages()

            if msg[2] == -99:
                if self.routing_table[msg[1]] == -99:
                    updateFlag = False

                else:
                    if self.name != msg[1]:
                        self.routing_table[msg[1]] = -99
                        #print self.name, " Updating distance to ", msg[1], " to -99 in routing table"
                        updateFlag = True
                        self.send_messages()
            else: 
                if msg[2] + int(self.get_outgoing_neighbor_weight(msg[0])) < self.routing_table[msg[1]]:
                    if (msg[2] + int(self.get_outgoing_neighbor_weight(msg[0]))) > -99:
                        if msg[1] != self.name:
                            self.routing_table[msg[1]] = msg[2] + int(self.get_outgoing_neighbor_weight(msg[0]))
                            #print "Shorter distance found to node"
                            updateFlag = True
                            self.send_messages()
                    elif (msg[2]) + int(self.get_outgoing_neighbor_weight(msg[0])) <=-99:
                        #print "Distance to node now exceeds -99"
                        self.routing_table[msg[1]] = -99
                        updateFlag = True
                        self.send_messages()
        # Empty queue
        self.messages = []

    def log_distances(self):
        ''' This function is called immedately after process_BF each round.  It 
        prints distances to the console and the log file in the following format (no whitespace either end):
        
        A:A0,B1,C2
        
        Where:
        A is the node currently doing the logging (self),
        B and C are neighbors, with vector weights 1 and 2 respectively
        NOTE: A0 shows that the distance to self is 0 '''
        
        # TODO: Use the provided helper function add_entry() to accomplish this task (see helpers.py).
        # An example call that which prints the format example text above (hardcoded) is provided.   
        logstring = ""
        numEntries = len(self.routing_table)
        #sort(self.routing_table)
        for index, (key, value) in enumerate(self.routing_table.items()):
            logstring += (key) + str(value)
            if (index < numEntries - 1):
                logstring += ","
            
        add_entry(self.name, logstring)     

    def send_messages(self):
        newMessages = []
        for key, value in self.routing_table.items():
            msg = (self.name, key, value)
            newMessages.append(msg)

        # for each incoming link, send updated messages
        for neighbor in self.incoming_links:
            for msg in newMessages:
                self.send_msg(msg, neighbor.name)
