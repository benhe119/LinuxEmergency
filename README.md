# LinuxEmergency
***
Linux下的应急工具

# 查看操作系统信息：
***
```
[root@centos emergency]# python emergency.py -o

        内核版本 : Linux-3.10.0-514.26.2.el7.v7.4.qihoo.x86_64-x86_64-with-centos-7.2.1511-Core
        CORE数量 : 16
        CPU数量 : 16
        CPU使用率 : scputimes(user=1.0, nice=0.0, system=0.0, idle=15.0, iowait=0.0, irq=0.0, softirq=0.0, steal=0.0, guest=0.0, guest_nice=0.0)
        内存总量  : 33736994816
        内存使用率 : 5.1

[root@centos emergency]#
```

# 查看内核模块信息：
***
```
[root@centos emergency]# python emergency.py -k
内核模块 : nfnetlink_queue  来源  :
内核模块 : nfnetlink_log  来源  :
内核模块 : nfnetlink  来源  :  nfnetlink_log,nfnetlink_queue
内核模块 : bluetooth  来源  :
```

# 查看所有登录成功失败的IP地址：
***
```
[root@scentos emergency]# python emergency.py -l
192.168.100.35  失败
192.168.100.31  失败
127.0.0.1  失败
192.168.100.20  成功
```

# 查看登录成功和失败日志
***
```
# 成功的 -s
[root@centos emergency]# python emergency.py -s | more
账户 : emergency    时间 : 2017-08-09-11:20  来源 : (192.168.100.24)
账户 : emergency    时间 : 2017-08-09-14:34  来源 : (192.168.100.24)
账户 : root    时间 : 2017-09-28-12:38  来源 : (192.168.100.65)
账户 : root    时间 : 2017-09-28-12:46  来源 : (192.168.100.65)
账户 : root    时间 : 2017-09-28-13:13  来源 : (192.168.100.65)

# 失败的 -f
[root@centos emergency]# python emergency.py -f | more
账户 : emergency    时间 : 192.168.100.34  来源 : Jul-6-21:27---21:27
账户 : emergency    时间 : 192.168.100.34  来源 : Jul-6-21:25---21:25
账户 : admin    时间 : 127.0.0.1  来源 : Jul-5-15:32---15:32

# 如果需要指定IP 加-i参数 ，例如 -i 192.168.100.34；

```

# 查看进程列表和详细信息
```
# 列表信息
[root@centos emergency]# python emergency.py -a 
***********************************************************************************************************
进程ID号: 2     进程名称: kthreadd     进程用户: root     启动时间: 2018-06-16 07:40:48
CPU占比: 0.0%     内存占比: 0.0%
网络连接:
***********************************************************************************************************
***********************************************************************************************************
进程ID号: 3     进程名称: ksoftirqd/0     进程用户: root     启动时间: 2018-06-16 07:40:48
CPU占比: 0.0%     内存占比: 0.0%
网络连接:
***********************************************************************************************************
...

#  详细信息
[root@centos emergency]# python emergency.py -p 28344
***********************************************************************************************************
进程ID号: 28344     进程名称: screen     进程用户: emergency     启动时间: 2018-06-22 13:25:30
工作路径: /home/emergency/
进程命令: SCREEN
父母进程: 1
亲子进程: [28345]
CPU占比: 0.0%     内存占比: 0.0046135703802%
网络连接:
进程环境:
        终端会话    :  /bin/bash
        安全会话    :
        登录账户    :  emergency
        工作账户    :  emergency
        权限路径    :  /usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/emergency/tools:/usr/local/bin:/usr/local/sbin:/usr/local/python3/bin:/home/emergency/.local/bin:/home/emergency/bin
        用户目录    :  /home/emergency

***********************************************************************************************************
```
