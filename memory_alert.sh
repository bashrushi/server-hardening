#!/bin/bash
##########################################################################################
# Creater: Rushi                                                                         #
# Version: 1.0                                                                           #
# Date: Jun 26                                                                           #
# Usage:./memory_alert.sh                                                                #
##########################################################################################
#!/bin/bash
function MEM_USAGE () {
echo "Hello "
}

TOTAL=`free -m | grep -v total | grep -v Swap | awk '{print$2}'`
USED=`free -m | grep -v total | grep -v Swap | awk '{print$3}'`

80_PERCENT="$((TOTAL*80/100))"
if [[ $USED -ge $80_PERCENT ]]
then
        MEM_USAGE
else
        echo "Memory Utilization on `hostname` is Normal."
fi
