#!/bin/sh

git clone --depth=1 https://github.com/decarbonizenews/energygraph-data.git
mkdir unpacked-data
for fn in energygraph-data/*/*.zip; do
	unzip $fn -d unpacked-data
done
