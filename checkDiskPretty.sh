#!/bin/bash

echo
echo Following is the disk space status
echo

df -h | awk '0+$5 >= 10 {print}' | awk '{print $5,$6}'  # todo: 0+$5 >= 10 stands for: the 5th column has to be greater or equal to 10

