#!/bin/bash
maas admin machines create architecture=amd64 mac_addresses=$1 hostname=$2 power_type=virsh power_parameters_power_id=$3 power_parameters_power_address=qemu+ssh://stormrider@192.168.123.1/system power_parameters_power_pass=Nicholai5

