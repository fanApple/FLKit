#!/bin/bash
echo "begin submit ..."
echo "git add ."
git add .
echo "please input commit \n:"
read commit
git commit -m $commit