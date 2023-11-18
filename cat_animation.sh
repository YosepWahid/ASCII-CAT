#!/bin/bash

# Clear terminal
clear

# Function to display each frame
display_frame() {
  clear
  echo -n -e "$1"
  sleep 0.5
}


# system
kernel_version=$(uname -r)
user_host=$(whoami)@$(hostname)
memory_usage=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')

# Animation frames
frame1="\e[38;5;38m
  /\_/\  \e[38;5;38m
 ( o.o ) \e[38;5;38m
  > ^ <  \e[0m\e[1m
 Kernel = $kernel_version \e[0m\e[1m
 User   = $user_host \e[38;5;38m
 Memory = $memory_usage 
"

frame2="\e[38;5;38m
  /\_/\  \e[38;5;38m
 ( o.o ) \e[38;5;38m
  > ~ <  \e[0m\e[1m
 Kernel = $kernel_version \e[38;5;38m
 User   = $user_host \e[0m\e[1m
 Memory = $memory_usage 
"

frame3="\e[38;5;38m
  /\_/\  \e[38;5;38m
 ( o.o ) \e[38;5;38m
  > - <  \e[38;5;38m
 Kernel = $kernel_version \e[0m\e[1m
 User   = $user_host \e[0m\e[1m
 Memory = $memory_usage
"

frame4="\e[38;5;38m
  /\_/\  \e[38;5;38m
 ( o.o ) \e[38;5;38m
  > ~ <  \e[0m\e[1m
 Kernel = $kernel_version \e[0m\e[1m
 User   = $user_host \e[0m\e[1m
 Memory = $memory_usage
"

# Loop through frames
for i in {1..1}
do
  # Display each frame
  display_frame "$frame1"
  display_frame "$frame2"
  display_frame "$frame3"
  display_frame "$frame4"
done

