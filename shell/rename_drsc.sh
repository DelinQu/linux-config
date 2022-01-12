#!/bin/bash
#
# Author: Gihan De Silva @  gihansblog.com
# rename script
# rename.sh
# sh rename_rs.sh png rs

x=0

for d in `ls -d */`
do
  cd $d
  
  for i in `ls *.$1`
  do
  mv $i $2$x.$1
  x=`expr $x + 1`
  done
  
  cd ..
done

echo "rename done!"
tree
