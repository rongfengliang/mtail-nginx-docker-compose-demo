#!/bin/sh
nohup /usr/bin/mtail  -logtostderr   -progs /progs/linecount.mtail -logs /var/log/error.log & 
