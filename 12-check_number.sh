#!/bin/bash
# Script to check if a number is positive or negative

echo "Enter a number:"
read num

if [ $num -gt 0 ]
then
  echo "The number is positive."
elif [ $num -lt 0 ]
then
  echo "The number is negative."
else
  echo "The number is zero."
fi
