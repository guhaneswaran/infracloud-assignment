#!/bin/bash

# Usage
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <start_index> <end_index>"
  echo "Example: $0 2 8"
  exit 1
fi

start=$1
end=$2

# Validate that start is less than or equal to end
if [ "$start" -gt "$end" ]; then
  echo "Error: start_index should be less than or equal to end_index"
  
  exit 1
fi

# Create file 
> inputFile

# Generate lines with index and a random number
for ((i=start; i<=end; i++)); do
  rand=$((RANDOM))
  echo "$i, $rand" >> inputFile
done

echo "File 'inputFile' generated"
