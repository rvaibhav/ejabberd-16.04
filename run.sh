#!/bin/sh

/opt/ejabberd-16.04/bin/ejabberdctl start
sleep 5
/opt/ejabberd-16.04/bin/ejabberdctl register admin oops.hereim.co 12341234
tail -f /dev/null
