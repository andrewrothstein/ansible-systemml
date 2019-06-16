#!/usr/bin/env sh
VER=1.2.0
MIRROR=https://www.apache.org/dist/systemml

dl()
{
    FILE=systemml-$VER-bin.tgz.sha512
    URL=$MIRROR/$VER/$FILE
    printf "# %s\n%s: sha512:%s\n" $URL $VER `curl -s $URL | awk '{print $1}'`
}

dl

