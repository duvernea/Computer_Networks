#!/usr/bin/python
# CS 6250 Fall 2017 - Project 7 - SDN Firewall

from pyretic.lib.corelib import *
from pyretic.lib.std import *
from pyretic.lib.query import packets
from pyretic.core import packet 

def make_firewall_policy(config):
    # TODO - This is where you need to write the functionality to create the
    # firewall. The config is the firewall pol file that you created or as used in the
    # autograder.  PLEASE DO NOT HARD CODE FIREWALL RULES IN THIS FILE OR YOU WILL LOSE CREDIT.
    
    # This section is entirely optional, but some students will use this to define any data
    # structures needed outside of the config loop.

    # feel free to remove the following "print config" line once you no longer need it
    # print config # for demonstration purposes only, so you can see the format of the config

    rules = []

    for entry in config:
        rule_firewall = identity

        # Rule number, srcmac, dstmac, srcip, dstip, srcport, dstport, protocol
        if entry.has_key('rulenum'):
            rulenum_entry = entry['rulenum']
        if entry.has_key('srcmac'):
            srcmac_entry = entry['srcmac']
            if srcmac_entry != "-":
                rule_firewall = rule_firewall & match(srcmac=EthAddr(srcmac_entry))
        if entry.has_key('dstmac'):
            dstmac_entry = entry['dstmac']
            if dstmac_entry != "-":
                rule_firewall = rule_firewall & match(dstmac=EthAddr(dstmac_entry))
        if entry.has_key('srcip'):
            srcip_entry = entry['srcip']
            if srcip_entry != "-":
                rule_firewall = rule_firewall & match(srcip=IPAddr(srcip_entry))
        if entry.has_key('dstip'):
            dstip_entry = entry['dstip']
            if dstip_entry != "-":
                rule_firewall = rule_firewall & match(dstip=IPAddr(dstip_entry))
        if entry.has_key('srcport'):
            srcport_entry = entry['srcport']
            if srcport_entry != "-":
                protocol_entry = entry['protocol']
                rule_firewall = rule_firewall & match(srcport=int(srcport_entry), ethtype=packet.IPV4, protocol=int(protocol_entry)) 
        if entry.has_key('dstport'):
            dstport_entry = entry['dstport']
            if dstport_entry != "-":
                protocol_entry = entry['protocol']
                rule_firewall = rule_firewall & match(dstport=int(dstport_entry), ethtype=packet.IPV4, protocol=int(protocol_entry))
        if entry.has_key('protocol'):
            protocol_entry = entry['protocol']
            if protocol_entry != "-":
                rule_firewall = rule_firewall & match(protocol=int(protocol_entry), ethtype=packet.IPV4)

        # TODO - This is where you build your firewall rules...
        # Note that you will need to delete the first rule line below when you create your own
        # firewall rules.  Refer to the Pyretic github documentation for instructions on how to
        # format these commands.
        # Example (but incomplete)
        #a= entry.split(", ")
        #match(srcmac=entry[])

        # This rule defines what is not allowed
        # rule = match(dstport=int(entry['dstport']),ethtype=packet.IPV4, protocol=packet.TCP_PROTO)

        rules.append(rule_firewall)
        pass

    allowed = ~(union(rules))

    return allowed
