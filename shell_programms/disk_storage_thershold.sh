#!/bin/bash
read -p "Enter the threshold :" threashold
disk_usage=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//') 
  if (( $disk_usage > $threashold));then
    echo "Warning:The disk usage is uitlization exceeded,current disk space is- $disk_usage"
  else
     echo "The disk usage is uitlization is under control current disk space is- $disk_usage"
  fi   