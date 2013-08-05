#!/bin/sh

# Need to replace the following values in the env-filter
# with values of interest:
# OLD_COMMITER_EMAIL
# NEW_COMMITER
# NEW_COMMITER_EMAIL
# OLD_AUTHOR_EMAIL
# NEW_AUTHOR
# NEW_AUTHOR_EMAIL
 
git filter-branch --env-filter '
 
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
 
if [ "$GIT_COMMITTER_EMAIL" = "OLD_COMMITER_EMAIL" ]
then
    cn="NEW_COMMITER"
    cm="NEW_COMMITER_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "OLD_AUTHOR_EMAIL" ]
then
    an="NEW_AUTHOR"
    am="NEW_AUTHOR_EMAIL"
fi
 
export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'
