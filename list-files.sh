#!/bin/bash

find . -type f -exec grep -l 'global.\{1,4\}warming' {} \; > global-warming-files.txt
find . -type f -exec grep -l 'climate.\{1,4\}change' {} \; > climate-change-files.txt

cat global-warming-files.txt | xargs -n 10 -J % cp % global-warm/
cat climate-change-files.txt | xargs -n 10 -J % cp % climate-chan/
