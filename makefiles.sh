#!/bin/bash

# Create 10 folders
for f in {1..10}; do
    mkdir -p "folder_$f"
done

# Create and distribute 100 files
count=1
for folder in {1..10}; do
    for i in {1..10}; do
        filename="file$count.txt"
        echo "this is $filename" > "folder_$folder/$filename"
        count=$((count + 1))
    done
done

echo "Created 10 folders and distributed 100 files (10 per folder)."
