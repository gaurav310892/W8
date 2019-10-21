#!/bin/bash

echo "Your shopping list is as follows:"
echo -e 'Item \t \t |Quantity \t \t |Price \t |Total'
echo -e ' \t \t | \t \t \t | \t \t |'
echo -e '-----------------------------------------------------------------'
awk 'BEGIN {
FS=","
}
{
printf "%-16s | %-21s | %-13s | %s\n" ,$1,$2,"$"$3, "$"$2*$3
}' shopping.csv
