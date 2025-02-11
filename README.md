# OrbbecCam

此仓库 fork 自 [OrbbecCam](https://github.com/LitchiCheng/OrbbecCam.git)

执行

```
sudo ./run.sh
```

注意，直接运行可执行文件提示找不到动态库，原因是没有 export 动态库加载路径，export 路径后则出现下面的错误:

```
[02/08 16:17:18.655417][info][20730][Context.cpp:68] Context created with config: default config!
[02/08 16:17:18.655425][info][20730][Context.cpp:73] Work directory=/home/seer/Project-CPP/OrbbecCam/install/bin, SDK version=v1.10.18-20250103-27bf2f6
[02/08 16:17:18.655431][info][20730][LinuxPal.cpp:32] createObPal: create LinuxPal!
[02/08 16:17:18.655760][warning][20730][OpenNIDeviceInfo.cpp:122] New openni device matched.
[02/08 16:17:18.655816][info][20730][LinuxPal.cpp:166] Create PollingDeviceWatcher!
[02/08 16:17:18.655828][info][20730][DeviceManager.cpp:15] Current found device(s): (1)
[02/08 16:17:18.655832][info][20730][DeviceManager.cpp:24]      - Name: Astra Mini Pro, PID: 0x065b, SN/ID: , Connection: USB2.0
discover camera number is 1
terminate called after throwing an instance of 'ob::Error'
Aborted (core dumped)
```

此时我们需要利用 sudo 权限打开 device 设备，然而又无法实现 sudo export，所有只用采用 bash 脚本来实现

后面也尝试将 普通用户 添加到 dialout 用户组并重启电脑，但是上述问题依旧未得到解决

## 思考

对于一个相机采图插件，如何通过回调时实现修改相机 IP 和 PORT 的功能呢？并且在修改过程中保证插件不重启


## 更新说明
2025-02-10 10:19 此工程较为规范，后续相机适配可参考该代码结构进行设计
