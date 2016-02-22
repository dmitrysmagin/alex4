#!/bin/sh

OPK_NAME=alex4.opk

echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=Alex the Allegator 4
Comment=Platformer
Exec=alex4
Terminal=false
Type=Application
StartupNotify=true
Icon=data/alex4
Categories=games;
EOF

# create opk
FLIST="data"
FLIST="${FLIST} default.gcw0.desktop"
FLIST="${FLIST} alex4"
FLIST="${FLIST} alex4.ini"
FLIST="${FLIST} license.txt"
FLIST="${FLIST} readme.txt"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop
