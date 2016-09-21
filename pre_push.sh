#!/bin/bash

#######################################################################################################
# Description:                                                                                        #
#     this is a script file that is executed locally (on client) BEFORE (pre) a push has been STARTED #
#     you may include anything you want here                                                          #
#######################################################################################################

RSYNC_ARGS="--archive --update --compress --human-readable --delete-before"

## emacs from local -> dropbox
#rsync $RSYNC_ARGS ~/.emacs* ~/DropboxClone/Dropbox/dot-files/
