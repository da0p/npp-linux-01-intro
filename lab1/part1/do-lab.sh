#!/usr/bin/bash

sw="docker exec -it clab-lab1-part1-switch"

# INCLUDE ALL COMMANDS NEEDED TO PERFORM THE LAB
# This file will get called from capture_submission.sh
$sw ip link add labbridge type bridge
$sw ip link set labbridge up
$sw ip link set eth1 master labbridge
$sw ip link set eth2 master labbridge
$sw ip link set eth3 master labbridge
$sw ip link set eth4 master labbridge
