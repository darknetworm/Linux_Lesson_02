#!/bin/bash

mdadm --zero-superblock --force /dev/sd{b,c,d,e,f}
mdadm --create --verbose /dev/md5 -l 5 -n 5 /dev/sd{b,c,d,e,f}
