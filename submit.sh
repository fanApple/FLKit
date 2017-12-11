#!/bin/bash
echo "----------begin submit----------"
echo "git add ."
git add .
echo "please input commit:"
read commit
git commit -m $commit
git push origin HEAD