#!/bin/bash

function RenameFileName(){
        # $1:alphabet $2:sequence $3:file_number $4:kakutyo-shi
        case "$2" in
                "__" ) echo "${1}${3}.${4}" ;;
                * ) echo "${1}${3}_${2}.${4}" ;;
        esac
}

#for file in $( ls | grep -E "^[A-Z]{2}[0-9_]{2}\d{4}\.\w{3}$" ); do
        newname=`RenameFileName ${file:0:2} ${file:2:2} ${file:4:4} ${file:9:4}`
        mv $file $newname
        echo "${file} -> $newname"
done
