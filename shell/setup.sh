#!/bin/bash

# convert .py to .so
echo "[ruing setup.py to build .so file...]"
python setup.py build_ext --inplace
echo "FINISH!"

# clean the redundant .c file
echo "We will clean the redundant .c file and .so file in root dir
and copy the .so file form build/ to motionseg/ and homo_v4/."

read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
  rm *.so ./motionseg/*.c ./homo_v4/*.c
  cp ./build/lib.linux-x86_64-3.8/featureextract*.so homo_v4/
  cp ./build/lib.linux-x86_64-3.8/singleHomo*.so homo_v4/
  cp ./build/lib.linux-x86_64-3.8/toolHomoStitch*.so homo_v4/
  cp ./build/lib.linux-x86_64-3.8/humandet*.so motionseg/
  echo "FINISH CLEAN!"
else
  echo "FINISH BUILDING!"
fi

