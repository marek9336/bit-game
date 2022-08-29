#/bin/bash

# hashrate
level=1
sleeptime=1
autoupgrade=yes
bit=0
bits=0
byte=0
KB=0
MB=0
GB=0
TB=0
PB=0
EB=0
ZB=0
YB=0
RB=0
QB=0

while true
do
    bits=$(echo "obase=2;$bit" | bc | cat)
    bit=$((bit+$level))
    sleep $sleeptime

    if (($bits > 11111111))
    then
    byte=$((byte + 32 ))
    bit=$((bit - 255))
    echo ""
    echo "----------------------------------------------------"
    echo "Upgraded level +1!"
    echo "Level is" $level
    echo "----------------------------------------------------"
    echo ""
    level=$((level +1))
    fi
    echo bits = $bits
    echo byte = $byte
    echo ""
done

while true
do
    echo ""
   sleep $sleeptime
    
    if (($bit <= 8 )); then
        bit=$(( bit * level))
        echo bit = $bit
        byte=$(( $bit / 8 ))
    fi
    if (($byte >= 1 <= 1024 )); then
        echo byte = $byte
        byte=$(( $byte * level))
    fi
    if (($byte >= 1024 )); then
        KB=$(( $byte / 1024 ))
        echo KB = $KB
    fi
    if (($KB >= 1024 )); then
        MB=$(( $KB / 1024 ))
        echo MB = $MB
    fi
    if (($MB >= 1024 )); then
        GB=$(( $MB / 1024 ))
        echo GB = $GB
    fi
    if (($GB >= 1024 )); then
        TB=$(( $GB / 1024 ))
        echo TB = $TB
    fi
    if (($TB >= 1024 )); then
        PB=$(( $TB / 1024 ))
        echo PB = $PB
    fi
    if (($PB >= 1024 )); then
        EB=$(( $PB / 1024 ))
        echo EB = $EB
    fi
        if (($EB >= 1024 )); then
        ZB=$(( $EB / 1024 ))
        echo ZB = $ZB
    fi
        if (($ZB >= 1024 )); then
        YB=$(( $ZB / 1024 ))
        echo YB = $YB
    fi
        if (($YB >= 1024 )); then
        RB=$(( $YB / 1024 ))
        echo RB = $RB
    fi
        if (($RB >= 1024 )); then
        QB=$(( $RB / 1024 ))
        echo QB = $QB
    fi
done
