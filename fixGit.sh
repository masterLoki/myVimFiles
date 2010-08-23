#!/bin/bash

git config remote.origin.receivepack '~/bin/git-receive-pack'
git config remote.origin.uploadpack '~/bin/git-upload-pack'
