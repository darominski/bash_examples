#!/bin/awk -f
BEGIN {
    print "Calculating Average ..."
}
{
    total = total + $8
}
END {
    print "Average book review:", total/NR, "stars"
}
