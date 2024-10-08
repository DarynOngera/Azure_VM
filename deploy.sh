#!/bin/bash

echo "Deploying the application..."

# Check if the destination directory exists, and if not, create it
if [ ! -d "/home/dongera/Azure_VM/project/directory" ]; then
  mkdir -p /home/dongera/Azure_VM/project/directory
fi

# Copy only the results.txt file to the deployment directory
if [ -f "results.txt" ]; then
  echo "Copying results.txt to the deployment directory..."
  cp results.txt /home/dongera/Azure_VM/project/directory/
else
  echo "results.txt not found!"
fi

# List files in the destination directory after copying
echo "Listing files in the destination directory:"
ls -l /home/dongera/Azure_VM/project/directory/

echo "Application deployed successfully."
