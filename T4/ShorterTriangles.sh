#source Triangles.sh > /dev/null 2>&1
#source Triangles.sh | sed "s/The area of triangle with base/Base/g ; s/and height/Height/g ; s/is/Area/g" 
#source Triangles.sh | awk '{if($2=="unix") {$2="fedora"} print $0}' file.txt
source Triangles.sh | awk '{print "Base: " $7 " " "Height: " $10 " " "Area: " $12 }' 
source Triangles.sh | awk '{s+=$12} END {print "Total Area: " s}'
#echo $line
