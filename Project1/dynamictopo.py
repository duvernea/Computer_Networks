#!/usr/bin/python
        										    

# CS6250 Computer Networks Project 1
# Creates a dynamic topology based on command line parameters and starts the Mininet Command Line Interface.

from mininet.topo import Topo
from mininet.net import Mininet
from mininet.log import lg, output, setLogLevel
from mininet.node import CPULimitedHost
from mininet.link import TCLink
from mininet.cli import CLI
import argparse
import sys
import os

# Parse Command Line Arguments
parser = argparse.ArgumentParser(description="Dynamic Topologies")
parser.add_argument('--delay',
                    help="Latency of network links, in ms",
                    required=True)

parser.add_argument('--bw',
                    type=int,
                    help=("Bandwidth of the links in Mbps."
                    "Must be >= 1"),
                    required=True)

parser.add_argument('--z',
                    type=int,
                    help=("Number of zones to create."
                    "Must be >= 1"),
                    required=True)

parser.add_argument('--n',
                    type=int,
                    help=("Number of hosts to create in each zone."
                    "Must be >= 1"),
                    required=True)

args = parser.parse_args()

lg.setLogLevel('info')

# Topology to be instantiated in Mininet
class DynamicTopo(Topo):
    "Dynamic Topology"

    def __init__(self, n=1, delay='1ms', z=1, bw=1, cpu=.1, max_queue_size=None, **params):
        """Ring topology with z zones.
           n: number of hosts per zone
           cpu: system fraction for each host
           bw: link bandwidth in Mb/s
           delay: link latency (e.g. 10ms)"""
        # Initialize topo
        Topo.__init__(self, **params)

        #TODO: Create your Dynamic Mininet Topology here!
        #NOTE: You MUST label switches as s1, s2, ... sz
        #NOTE: You MUST label hosts as h1-1, h1-2, ... hz-n     
        #HINT: Use a loop to construct the topology in pieces.
        
        hostConfig = {'cpu': cpu}
        linkConfig = {'bw': bw, 'delay': delay, 'loss': 0, 'max_queue_size': max_queue_size}
        
        # Create switches
        for i in range(z):
            sw_label = 's%s' % (i + 1)
            if (i==0):
                first_sw = self.addSwitch(sw_label)
                prev_sw = first_sw
		sw = first_sw
            else:
                sw = self.addSwitch(sw_label)
                self.addLink(sw, prev_sw, **linkConfig)
                prev_sw = sw

            # Create hosts for each switch
            for j in range(n):
                tu = (i+1,j+1)
                host_label = 'h{0}-{1}'.format(*tu)
                print 'host: ' + host_label
                host = self.addHost(host_label, **hostConfig)
                # Create link
                self.addLink(host, sw, **linkConfig)
        
        # Add link from first switch to last switch
        self.addLink(sw, first_sw, **linkConfig)    
        
def main():
    
    "Create specified topology and launch the command line interface"    
    topo = DynamicTopo(n=args.n, delay=args.delay, z=args.z, bw=args.bw)
    net = Mininet(topo=topo, host=CPULimitedHost, link=TCLink)
    net.start()

    #TODO: Since this topology contains a cycle, we must enable the Spanning Tree Protocol (STP) on each switch.
    #      This is done with the following line of code: s1.cmd('ovs-vsctl set bridge s1 stp-enable=true')
    #      Here, you will need to generate this line of code for each switch.
    #HINT: You will need to get the switch objects from the net object defined above.
    for i in range(args.z):    
        sw_label = 's%s' % (i + 1)
        sw = net.get(sw_label)
        sw.cmd('ovs-vsctl set bridge ' + sw_label + ' stp-enable=true')

    CLI(net)
    net.stop()
    
if __name__ == '__main__':
    setLogLevel('info')
    main()
