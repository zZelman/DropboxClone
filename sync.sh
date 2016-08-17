#!/bin/bash

HOSTNAME=$1
PASS=$2
CMD=$3

SSHPASS="sshpass -p $PASS"
REMOTE=$HOSTNAME:/[remote/path]/DropboxClone

RSYNC_ARGS="--archive --update --compress --human-readable --delete-before --stats"

# push
if [ $CMD == 'push' ]; then
  ~/DropboxClone/pre_push.sh
  time $SSHPASS rsync $RSYNC_ARGS ~/DropboxClone/ $REMOTE
fi

# pull
if [ $CMD == 'pull' ]; then
  time $SSHPASS rsync $RSYNC_ARGS $REMOTE/ ~/DropboxClone/
  ~/DropboxClone/post_pull.sh
fi

echo

