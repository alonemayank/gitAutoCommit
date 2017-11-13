#!/bin/bash

date > ~/nodeProject/date.txt

git -C ~/nodeProject/ add .
git -C ~/nodeProject/ commit -m "Updating log file"
git -C ~/nodeProject/ push
