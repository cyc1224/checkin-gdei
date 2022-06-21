# checkin-gdei
未完善，尽量不用使用。明天考完继续弄。  
广东第二师范学院自动打卡脚本。
# 原理
通过selenium对浏览器进行直接操作，除了封IP基本是可以持续使用的。
# 一键脚本
请先查看系统要求
+ Linux
+     wget https://raw.githubusercontent.com/cyc1224/checkin-gdei/main/install.sh && chmod +x install.sh && ./install.sh
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
+ Chromium(Firefox有BUG，不推荐使用)
    + 为什么使用Chromium而不是Chrome？
        + Chromium 支持arm架构的系统(基本上是全平台)
+ ChromeDriver(Firefox用geckodriver)
    + Windows下将下载的可执行文件复制至Chrome的安装目录下(C:\Program Files\Google\Chrome\Application)  
      [下载地址](https://chromedriver.storage.googleapis.com/index.html)
    + Linux(Ubuntu)使用apt-get命令安装  
       `sudo apt-get install -y chromium-driver`
+ python包
    +  selenium
+ qrencode  
    + 用于终端生成二维码，扫描获得打卡状态微信推送
