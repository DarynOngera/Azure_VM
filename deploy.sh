#!/bin/bash

echo "Deploying the application..."

# Check if the destination directory exists, and if not, create it
if [ ! -d "/home/dongera/Azure_VM/project/directory" ]; then
  mkdir -p /home/dongera/Azure_VM/project/directory
fi

# Copy files (for example, results.txt) to the deployment directory
echo "Copying files to the deployment directory..."
cp -r * /home/dongera/Azure_VM/project/directory/

# Display success message
echo "Application deployed successfully."
