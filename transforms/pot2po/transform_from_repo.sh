#!/bin/bash
#
# move the .pot files into a .po so files sent and received are both in .po 
#
find . -name "*.pot" | while read -r pot_file; do
  suffix=".pot"

  # Remove the suffix
  po_target="${pot_file%$suffix}.po"
  echo "pot_file = $pot_file"
  echo "po_target = ${po_target}"

  echo "cp ${pot_file} ${po_target}"
done


