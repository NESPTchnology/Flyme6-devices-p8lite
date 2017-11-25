![FlymeOS 6][1]
## Language:[中文](./README.md) | English 
## Please Read：[NESP Software Licence v1.1](./NESL.md) | [Apache2.0](./Apache.md) | [GPLv2](./GPL.md)  

# Flyme Patchrom for P8-lite  

**UI:** Flyme 6  

**Android Version:** Android 6.0.1  

**Device：** HUAWEI P8 Lite(ALE-TL00,ALE-L21)  

**Team Website(Building):**[NESP Technology](http://nesp.1g7.net)  

**Team Weibo:** [NESP_Technology](http://weibo.com/NESPtechnology)  

## Update Logs
### 24/09/2017 Sunday Build . 

1.Mobile data is not work(Aosp bug).   

### 19/10/2017 Flyme6.7.10.16 . 

1.Mobile data is not work(AOSP bug)unless setting APN.   
2.Update the AOSP @haky 86(XDA ID).   
3.Update some APP 

## HOW TO USE IT?
**Platform:** Linux
### Step One
First of all,you should download the Flyme patchrom tools from [Flyme github website](https://github.com/Flymeos) and read official document .Then you must install Patchrom environment （you can read  Google document about compiling the Android code）.
### Step Two
Open terminal and type the following instructions:

`cd  ~/flyme`  

`mkdir devices/p8l`  

`cd devices/p8l`  

`git clone https://github.com/NESPTchnology/Flyme6-devices-p8lite.git`   

`cd  ~/flyme`   

`. build/envsetup.sh`   

`cd devices/p8l`   

`flyme fullota`

Finally,you can find the zip file under out directory.