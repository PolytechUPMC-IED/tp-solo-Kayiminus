#!/bin/sh  
list =`ls | grep ".tgz" `

for i in $list

do 
 	tar -xpf $i

done 


