#!/bin/bash
if [ -n "$1" ]; then
	dt=$1
else
	dt=$(date '+%d/%m/%Y %H:%M:%S')
fi

Rscript -e 'roxygen2::roxygenise()'
Rscript -e 'pkgdown::build_site()'

git pull
git add -A :/
git commit -m "$dt" 
git push -u origin main
echo "Committed/pushed changes to master branch on GitHub"
