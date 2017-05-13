#!/bin/bash
#

echo "Laravel Code Updater!!!"

if [[ ! -d ../../Lets-Build-a-Forum-in-Laravel ]]; then
  echo "Can't find code; EXITING!!"
  exit 1 # FAIL!!
fi

if [[ -d app-server/Code ]]; then 
 echo "Remove existing folder!!"
 rm -rf app-server/Code
else 
  echo "Do nothing!"
fi

# Get this far can copy the code over :P
echo "Copying the latest code over .."
cp -a ../../Lets-Build-a-Forum-in-Laravel app-server/Code
echo "Removing git stuff .."
rm -rf app-server/Code/.git*
