# Flyme Patchrom for P8Lite

 ![FlymeOS 6][1]

## Language:[中文](./README.md) | English
## READ LICENSE：[NESP Software License v1.1](http://ns-jin.github.io/docs/license/NESL.html) | [Apache许可证2.0](http://ns-jin.github.io/docs/license/Apache.html) | [GPLv2](http://ns-jin.github.io/docs/license/GPL.html)

| Item | Information |
|:----------:|:----------:|
|System Name| FlymeOS|
|System Version|v6.7|
| Android Version    |        Android 7.1   |
|     Device    | HUAWEI P8Lite(ALE-TL00,ALE-L21)|
|Team Website(Building)  | [NESP Technology](http://nesp.1g7.net)  |
|    Team Weibo    |  [NESP_Technology](http://weibo.com/NESPtechnology) |
|Facebook|NESP ROM|

## Update Logs
>_**More information please attention to other ROM that made by patchrom on flyme offical website.**_

### 07/12/2017 Sunday Build .

>1.Mobile data is not work(AOSP bug).   



## HOW TO USE IT?
**Platform:** Linux
### Step One
>First of all,you should download the Flyme patchrom tools(the branch nougat-7.1) from [Flyme github website](https://github.com/Flymeos) and read official document .Then you must install **Patchrom environment** （you can read  Google document about compiling the Android code）.
### Step Two
Open terminal and type the following instructions:

```bash
cd  ~/flyme/devices

git clone -b android-7.1 https://github.com/NESPTchnology/Flyme6-devices-p8lite.git  

mv Flyme-devices-p8lite p8l

cd  ~/flyme   

. build/envsetup.sh   

cd devices/p8l   

edit `#PRODUCE_INTERNATIONAL_ROM := true` to `PRODUCE_INTERNATIONAL_ROM := true` in Makefile file under  p8l directory

flyme fullota
```

Finally,you can find the zip file under out directory.


  [1]: ../images/flyme.png "flyme.png"
