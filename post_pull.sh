#!/bin/bash

########################################################################################################
# Description:                                                                                         #
#     this is a script file that is executed locally (on client) AFTER (post) a pull has been FINISHED #
#     you may include anything you want here                                                           #
########################################################################################################

RSYNC_ARGS="--archive --update --compress --human-readable --delete-before"

## emacs from dropbox -> local
rsync $RSYNC_ARGS ~/DropboxClone/Dropbox/dot-files/.emacs* ~/
