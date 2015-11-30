#!/bin/bash
output="["
if [ $# -gt 0 ]; then
  input=$(ls -L $1)

  while read -r line; do
    tmp="\"${line}\","
    output="$output
  $tmp"
done <<< "$input"
tmp="
]"
output=${output%,}
output="$output$tmp"
echo "$output"
fi
