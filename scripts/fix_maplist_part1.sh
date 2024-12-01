#!/bin/bash


cd "$(dirname "$0")"

MAPS=$( find | grep -E "c6|c7|c8|c9|c10|c11|c12|c13|c14"| grep .bsp )  

echo "" > copy_dlc_maps_part2.sh

for MAP in $MAPS ;   do
  echo "cp $MAP left4dead2/maps/" >> fix_maplist_part2.sh
done

echo "now run "
echo "  ./fix_maplist_part2.sh"