![flyme6][1]
## 语言:中文 | [English](./README_EN.md)
## 请先阅读：[NESP Software Licence v1.1](./NESL.md) | [Apache许可证2.0](./Apache.md) | [GPLv2](./GPL.md)   

**UI种类：** Flyme 6.7

**Android 版本：** Android 6.0.1

**机型：** 华为P8 Lite(ALE-TL00,ALE-L21)

**团队官网：** [NESP Technology](http://nesp.1g7.net)

**官方微博：**  [NESP_Technology](http://weibo.com/NESPtechnology)

## 更新日志 
### 2017/09/24 周天 建立 
1.数据链接不能用(底包bug)
### 2017/10/19 Flyme6.7.10.16
1.数据链接不能用(底包bug)除非手动设置APN  
2.升级了底包 @haky 86(XDA ID)   
3.升级部分APP
## 使用方法
**平台：** Linux
### 步骤一
首先，要下载 Flyme patchrom tools 从 [Flyme github官方网站](https://github.com/Flymeos)并且阅读他们的文档，然后安装好编译环境，你可以参考谷歌官方文档。
### 步骤二
打开终端输入下列命令：   

`cd  ~/flyme`  

`mkdir devices/p8l`  

`cd devices/p8l`  

`git clone https://github.com/NESPTchnology/Flyme6-devices-p8lite.git`   

`cd  ~/flyme`   

`. build/envsetup.sh`   

`cd devices/p8l`   

`flyme fullota`   

最后你可以在out目录下得到zip刷机包。


  [1]: ./images/flyme6.png "flyme6.png"