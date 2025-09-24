#!/bin/bash
#
# move the .pot files into a .po so files sent and received are both in .po 
#
find . -name "*.pot" | while read -r pot_file; do
  suffix=".pot"

  # Remove the suffix
  po_target="${pot_file%$suffix}.po"
  echo "cp ${pot_file} ${po_target}"
  cp "${pot_file}" "${po_target}"
done


