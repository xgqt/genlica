#!/bin/sh


# This file is part of genlica.

# genlica is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# genlica is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with genlica.  If not, see <https://www.gnu.org/licenses/>.


trap 'exit 128' INT
export PATH


exit_result=0
files="$(grep -R --exclude-dir='.git' '^#!/.*sh$' 2>/dev/null | cut -d ':' -f 1)"


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
