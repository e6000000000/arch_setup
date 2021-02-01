#!/bin/bash

# dir that script locate in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# copy config files
cp -r $DIR/user/. ~