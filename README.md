# 暂停维护
不用打卡了🥳！
~curl更好用，等哪天用不了了再回归selenium。~
# 免责声明
+ 你明白且同意自行承担使用该脚本所带来的风险及所产生的后果，我不对你使用该脚本所产生的风险及后果负责。
# checkin-gdei
未完善，尽量不用使用。~明天考完继续弄。~  
带打卡状态微信推送的广东第二师范学院自动打卡脚本。  
多用户打卡版本(帮TA打卡)~预计明天(2022/06/22)上线~  
随机时间打卡功能~预计明天(2022/06/22)可用~
# 原理
通过selenium对浏览器进行直接操作，除了封IP基本是可以持续使用的。
# 一键脚本
请先查看系统要求
+ Linux
+     wget https://raw.githubusercontent.com/cyc1224/checkin-gdei/main/install.sh && chmod +x install.sh && sudo ./install.sh
+ 卸载脚本过几天上传
+ Windows
    + 脚本已经完成，暂不上传
# 系统要求
+ Ubuntu
+ Debian(一键脚本暂不支持，可能过几天支持了(在考试))
+ Windows(同上)
+ CentOS(同上)
+ MacOS(同上)
+ ...(自行尝试)
# 环境要求
使用一键脚本的可以基本上不看这个  
+ python(建议3.0以上)
    + 没有的话自行安装`sudo apt-get install python3.7`
+ Chromium(Firefox有BUG，不推荐使用)
    + 为什么使用Chromium而不是Chrome？
        + Chromium 支持arm架构的系统(基本上是全平台)
        + Linux安装：`sudo apt-get install chromium-browser`
+ ChromeDriver(Firefox用geckodriver)
    + Windows下将下载的可执行文件复制至Chrome的安装目录下`C:\Program Files\Google\Chrome\Application`  
      [下载地址](https://chromedriver.storage.googleapis.com/index.html)
    + Linux(Ubuntu)使用apt-get命令安装  
       `sudo apt-get install -y chromium-driver`
+ python包
    +  selenium
    +  webdriver-manager
+ qrencode  
    + 用于终端生成二维码，运行一键脚本时通过扫描获得打卡状态微信推送功能
        (使用ServerChan服务进行信息推送)
    + ~过几天升级使该脚本获得无推送功能(或者在扫描二维码时出现运行脚本)~
# 其它可能出现的问题
+ 脚本运行过程中退出导致没有设置微信推送
    + 前往`~/checkin@gdei/`目录删除`key.txt`文件
    + 预计明天(2022/06/22)解决
# 安全问题
+ 我对你的校园网账号密码不感兴趣，但是所有脚本用到的账号密码及key都是明文保存在你(们)的服务器的`~/checkin@gdei/`目录内，请你注意服务器安全。
# 软件许可证
+ 本脚本使用开源软件协议 [Mozilla Public License 2.0 (MPL-2.0)](https://opensource.org/licenses/mpl-2.0)
