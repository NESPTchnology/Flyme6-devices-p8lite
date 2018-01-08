# Flyme Patchrom for P8Lite
![FlymeOS 6][1]
## 语言:中文 | [English](./README_EN.md)
## 请先阅读：[NESP Software Licence v1.1](http://ns-jin.github.io/docs/license/NESL.html) | [Apache许可证2.0](http://ns-jin.github.io/docs/license/Apache.html) | [GPLv2](http://ns-jin.github.io/docs/license/GPL.html)  

| 条目 | 信息 |
|:----------:|:----------:|
|系统名称| FlymeOS|
|系统版本|v6.7|
| Android 版本    |        Android 6.0.1    |
|       机型     | 华为P8Lite(ALE-TL00,ALE-L21)|
|团队官网    |       [NESP Technology](http://nesp.1g7.net)         |
|        官方微博    |      [NESP_Technology](http://weibo.com/NESPtechnology)       |

## 更新日志
### 2017/09/24 周天 建立
>1.数据链接不能用(底包bug)
### 2017/10/19 Flyme6.7.10.16
>1.数据链接不能用(底包bug)除非手动设置APN  
>2.升级了底包 @haky 86(XDA ID)   
>3.升级部分APP

### 2017/12/06 Flyme6.7.11.24
>通讯  

修复：陌生号码添加标记弹框显示异常的现象

>日历  

修复：点击日历中日程提醒卡片显示异常的现象

>系统   

修复：使用工具箱随机事件功能出现异常的现象

>天气   

修复：部分场景下天气预报界面显示异常的现象

>计算器  

修复：计算器中汇率计算有误的现象

>应用  

更新：部分系统应用至官方最新版本

>其他  

同步：Flyme 6最新适配代码

### 2017/12/06 Flyme6.7.12.29	
>应用	

更新：部分系统应用至官方最新版本

>其他	

同步：Flyme 6最新适配代码
## 注意事项
>注意：如果你的手机已经Root，将只能检查到完整包更新，更新不会丢失数据，只会丢失root权限，请放心升级！

## 使用方法
**平台：** Linux
### 步骤一
>首先，从 [Flyme github官方网站](https://github.com/Flymeos)下载 Android6.0分支（marshmallow-6.0）的Flyme patchrom 工具并且阅读他们的文档，然后安装好**编译环境**，你可以参考谷歌官方文
### 步骤二
打开终端输入下列命令：  

```bash
cd  ~/flyme/devices

git clone git@github.com:NESPTechnology/FlymeOS_devices_P8Lite.git  -b android-6.0 	  

mv Flyme6-devices-p8lite p8l

cd  ~/flyme	

. build/envsetup.sh	

cd devices/p8l	

make nesp	

flyme fullota  
```

最后你可以在out目录下得到zip刷机包。


  [1]: ../images/flyme.png "flyme.png"
