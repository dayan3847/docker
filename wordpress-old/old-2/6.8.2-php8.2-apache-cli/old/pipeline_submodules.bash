#!/bin/bash

for dir in ./plugins/*/; do
  if [[ -d "$dir" ]]; then
    echo "Entering module: $dir"
    (
      cd "$dir" || exit
      echo "Current Module Directory: $(pwd)"
      echo "Starting pipeline module: $dir"
      bash ./bin/pipeline.bash
      echo "Finished pipeline module: $dir"
      echo "-------------------------"
    )
  fi
done
