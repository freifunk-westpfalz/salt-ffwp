# -*- coding: utf-8 -*-
'''
Module for netaddr.
PRE ALPHA

:depends: netaddr
'''
from __future__ import absolute_import

__virtualname__ = 'netaddr'

# Import third party libs
try:
    import netaddr
    HAS_NETADDR = True
except ImportError as e:
    HAS_NETADDR = False


def __virtual__():
    '''
    Only load if netaddr library exist.
    '''
    if not HAS_NETADDR:
        return (False, 'The netaddress execution module cannot be loaded: '
                'netaddr python library is not installed.')
    return __virtualname__

def address(cidr):
    ips = netaddr.IPNetwork(cidr)
    return str(ips.ip)

def netmask(cidr):
    ips = netaddr.IPNetwork(cidr)
    return str(ips.netmask)

def prefix(cidr):
    ips = netaddr.IPNetwork(cidr)
    return str(ips.prefixlen)

def net(cidr):
    ips = netaddr.IPNetwork(cidr)
    return str(ips.cidr)

def cidr(cidr):
    ips = netaddr.IPNetwork(cidr)
    return str(ips.ip) + '/' + str(ips.prefixlen)
