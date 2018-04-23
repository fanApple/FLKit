#!/bin/bash
echo "----------begin submit----------"
echo "git add ."
git add .
echo "please input commit:"
read commit
git commit -m $commit
echo "----------begin push----------"
git push origin HEAD
echo "----------push end----------"