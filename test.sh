#!/bin/sh


exit_result=0
files="$(grep '#!/bin/sh' ./* 2>/dev/null | cut -d ':' -f 1)"


for i in ${files}
do
    echo "File ${i}... checking"
    if ! shellcheck "${i}"
    then
        echo "    there were errors found in the file"
        exit_result=1
    else
        echo "    file is correct"
    fi
    echo "File ${i}... done"
done

exit ${exit_result}
