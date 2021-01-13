查看当前内核版本
```
uname -r
```

导入公钥
```shell
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
yum install https://www.elrepo.org/elrepo-release-8.el8.elrepo.noarch.rpm
```

查看最新稳定版内核
```
yum --disablerepo="*" --enablerepo="elrepo-kernel" list available
```

安装最新稳定内核
```
yum --enablerepo=elrepo-kernel install kernel-ml kernel-ml-core kernel-ml-devel kernel-ml-doc kernel-ml-headers kernel-ml-modules kernel-ml-modules-extra kernel-ml-tools kernel-ml-tools-libs kernel-ml-tools-libs-devel perf python3-perf bpftool
```

重启 验证内核安装情况
```
reboot 
# wait.....
uname -r
```

查看已安装的内核
```
rpm -qa | grep kernel
```

删除旧版本内核
```
yum remove kernel-ml-modules-5.10.3-1.el8.elrepo.x86_64 kernel-ml-devel-5.10.3-1.el8.elrepo.x86_64 kernel-ml-core-5.10.3-1.el8.elrepo.x86_64 kernel-ml-modules-extra-5.10.3-1.el8.elrepo.x86_64 kernel-ml-5.10.3-1.el8.elrepo.x86_64 
```