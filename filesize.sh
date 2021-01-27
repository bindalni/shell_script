#!/bin/bash
touch myfile.txt
echo "Hello world" >> myfile.txt
size= wc -c < myfile.txt
echo "Size of file is " $size

