#!/bin/bash

# Simple Interest Calculator

echo "***************** Simple Interest Calculator *****************"

echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest (per annum):"
read rate

echo "Enter the time period (in years):"
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "--------------------------------------------------------------"
echo "Principal Amount  : $principal"
echo "Rate of Interest  : $rate%"
echo "Time Period       : $time years"
echo "--------------------------------------------------------------"
echo "Simple Interest   : $simple_interest"
echo "Total Amount      : $total_amount"
echo "--------------------------------------------------------------"
