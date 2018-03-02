#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2
NESP_FILES=./nesp-files

moveDirs=("android/accounts" "android/hardware" "android/printservice" "android/speech")

echo ">>> Add NESP files"
#unzip Webview.apk to vendor
tar -xf $NESP_FILES/webview.tar.gz -C ./vendor/system/app

if [ "$jarBaseName" = "framework" ];then
    echo ">>> in custom_jar $jarBaseName"
    for dir_name in "${!moveDirs[@]}"
    do
        mv -v $tempSmaliDir/smali/${moveDirs[$dir_name]} $tempSmaliDir/smali_classes2/${moveDirs[$dir_name]}
    done
fi


