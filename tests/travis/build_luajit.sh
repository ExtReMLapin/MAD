#! /bin/bash
set -ex
[[ -e lib/luajit ]] || git clone http://github.com/MethodicalAcceleratorDesign/LuaJIT.git lib/luajit-rj
cd lib/luajit-rj
git checkout auditlog
git pull
make -j
make install PREFIX=`pwd`
mv bin/luajit{-2.1.0-beta3,}
cp src/libluajit.a ../../bin/linux
