#!/bin/bash
# personalize these with your own name and email address
git config --global user.name "Steve Walsh"
git config --global user.email "steve.walsh@sap.com"

# colorize output (Git 1.5.5 or later)
git config --global color.ui auto

# colorize output (prior to Git 1.5.5)
git config --global color.status auto
git config --global color.diff auto
git config --global color.branch auto

# and from 1.5.4 onwards, this will work:
git config --global color.interactive auto

# user-friendly paging of some commands which don't use the pager by default
# (other commands like "git log" already does)
# to override pass --no-pager or GIT_PAGER=cat
git config --global pager.status true
git config --global pager.show-branch true

# shortcut aliases
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout

# this so I can submit patches using git send-email
git config --global sendemail.smtpserver [your-smtp-server]
git config --global sendemail.aliasesfile ~/.gitaliases
git config --global sendemail.aliasfiletype mailrc

# shortcut aliases for submitting patches for Git itself
# refer to the "See also" section below for additional information
echo "alias autotest autotest@test.kernel.org" >> ~/.gitaliases

# another feature that will be available in 1.5.4 onwards
# this is useful when you use topic branches for grouping together logically related changes
git config --global format.numbered auto

# turn on new 1.5 features which break backwards compatibility
git config --global core.legacyheaders false
git config --global repack.usedeltabaseoffset true

