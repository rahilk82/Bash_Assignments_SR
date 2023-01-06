  GNU nano 6.2                                                  task9_git_patch.sh *                                                          
#!/usr/bin/env bash

# clone the repository
git clone https://github.com/traefik/traefik

# navigate to the cloned repository
cd traefik

# get the latest tag
latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`)

# checkout the latest tag
git checkout $latest_tag

#applying the patch. 

#NOTE!!!! - There is no patch file in the repo to apply the patch. I have searched all the commit ids with git log --all but did not found it.

#Show me if you can 

git apply commit 0a09a78cac2d4f29f1d2bdb8d47eeda5e4457196

