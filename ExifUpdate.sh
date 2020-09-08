#!/bin/bash

for file in $( ls | grep .mp4$ ); do
        sourcefile=${file/.mp4/.360}
        if [ -e $sourcefile ]; then
                date=`exiftool -T -MediaCreateDate ${sourcefile}`
                echo $date
                exiftool -FileModifyDate="${date}" -CreateDate="${date}" -ModifyDate="${date}" -MediaCreateDate="${date}" -MediaModifyDate="${date}" -TrackCreateDate="${date}" -TrackModifyDate="${date}" -overwrite_original ${file}
                echo "$file date Updated."
        fi
done
