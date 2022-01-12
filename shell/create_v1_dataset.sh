#!/bin/bash
# rename script
# sh create_v1_dataset.sh jpg rs

# root_dir="/home/qdl/Desktop/THOSHIBA/Dataset/RS/video"
root_dir="/home/qdl/Desktop/RollingShutter/Code/rs-inliners/dataset/v1"
target_dir=$(pwd)

cd $root_dir
images=($(ls -v *.$1))                # array
len=${#images[@]}                     # length

echo $len
x=0
for ((i=0;i<len;i+=4)); do
  # mkdir
  d="$target_dir/$x"
  mkdir -p $d
  # copy to target dir
  for j in {0..3};do
    cp ${images[$( expr $i + $j )]} "$d/$2$j.$1"
  done
  x=`expr $x + 1`
done

cd $target_dir
echo "create done!"
