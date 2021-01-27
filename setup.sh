#!/usr/bin/env sh

# dir that script locate in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install paru
#/usr/bin/env $DIR/scripts/paru_install.sh

# install apps
#/usr/bin/env $DIR/scripts/install_apps.sh

# enable services
#/usr/bin/env $DIR/scripts/services.sh

cp -r $DIR/user ~/