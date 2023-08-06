#!/bin/bash

function check_connection(){
    local iface
    local ip_check
    local file_check

    if [[ $1 == "wired" ]]; then
        iface="enp2s0"
    elif [[ $1 == "wireless" ]]; then
        iface="wlp3s0"
    fi

    ip_addr=$(ip addr show $iface | grep -E -o 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d' ' -f2)
    [[ -n $ip_addr ]] && ip_check=true || ip_check=false
    grep -qw up /sys/class/net/$iface/operstate 2>/dev/null && file_check=true || file_check=false 

    $ip_check && $file_check && printf "%s" $ip_addr || printf "%s" " ─"
}


case $1 in
    wired) check_connection wired ;;
    wireless) check_connection wireless ;;
esac
