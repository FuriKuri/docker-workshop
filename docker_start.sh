#!/bin/sh

/opt/butterfly/butterfly.server.py --motd='' --unsecure --host=0.0.0.0 --login=false --cmd="ash -l" &

http-server -p 3000 -a 0.0.0.0