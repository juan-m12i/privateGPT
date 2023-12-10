#!/bin/bash

# Function to generate a clickable link in the terminal
function print_link {
    local url=$1
    local text=$2
    echo -e "\e]8;;$url\a$text\e]8;;\a"
}

# Get the URL
url="http://$(curl -s ifconfig.me):8001"

# Output the clickable link
print_link "$url" "$url"

# Run your Python command
poetry run python -m private_gpt
