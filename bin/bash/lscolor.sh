#!/bin/bash

eval $(echo "no:global default;fi:normal;di:directory;ln:symbolic link;pi:named pipe;so:socket;do:door;bd:block device;cd:character device;or:orphan symlink;mi:missing file;su:set uid;sg:set gid;tw:sticky other writable;rs:default;mh:multi-hardlink;
ow:other writable;st:sticky;ex:executable;"|sed -e 's/:/="/g; s/\;/"\n/g')
{
  IFS=:
  for i in $LS_COLORS
  do
    echo -e "\e[${i#*=}m$( x=${i%=*}; [ "${x:0:1}" != "*" ] && [ "${x:0:1}" != "*" ] && [ "${!x}" ] && echo "${!x}" || echo "$x" )\e[m"
  done
} |less -e -r --long-prompt
