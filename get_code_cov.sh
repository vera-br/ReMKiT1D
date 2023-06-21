#!/bin/bash

# This file is part of ReMKiT1D.
#
# ReMKiT1D is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#
# ReMKiT1D is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with ReMKiT1D. If not, see <https://www.gnu.org/licenses/>. 
#
# Copyright 2023 United Kingdom Atomic Energy Authority (stefan.mijin@ukaea.uk)
#
LOCATION=$1
ROOT_PATH=$2
cd $ROOT_PATH
find -name '*.f90' -or -name "*.F90" -exec cp -t $LOCATION {} +
cd -
find -name '*.gcno' -exec cp -t $LOCATION {} +
find -name '*.gcda' -exec cp -t $LOCATION {} +
cd $LOCATION
find -name '*.f90*' -or -name "*.F90*" -exec gcov -pb {} \;