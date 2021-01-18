#!/bin/sh -l

# hack, move home to $HOME(/github/home)
ln -s /home/ec2-user/.cargo $HOME/.cargo
ln -s /home/ec2-user/.rustup $HOME/.rustup

# go to the repo root
cd $GITHUB_WORKSPACE
bash -c "$*"
chmod -R 0777 * 
