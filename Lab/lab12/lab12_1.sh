#!/bin/bash
cflag=0
nflag=0
while getopts i:o:p:C:n opt
do
case $opt in
i) ival=$OPTARG;;
o) oval=$OPTARG;;
P) pval=$OPTARS;;
C) cflag=1;;
n) nflag=1;;
esac
 done
   if [ $cflag -a $nflag ]
   then
       grep -n $pval $ival>$oval
   elif test $cflag
   then
       grep $pval $ival>$oval
   elif test $nflag
   then
       grep -n -i $pval $ival>$oval
   else  test $nflag
   fi
	done
		       
