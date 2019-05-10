 #!/usr/bin/env bash

 # Execute this file to install the raven cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%RavenDark-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/RavenDark-Qt.app/Contents/MacOS/ravendarkd /usr/local/bin/ravendarkd
 sudo ln -s ${LOCATION}/RavenDark-Qt.app/Contents/MacOS/ravendark-cli /usr/local/bin/ravendark-cli
