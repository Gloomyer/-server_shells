## 项目地址
Github 地址为clone地址

原地址:[https://git.gloomyer.com/root/server_shells](https://git.gloomyer.com/root/server_shells)

## 服务器环境搭建脚本

这是一些常用的服务器环境搭建脚本 90%需要配合docker完成

## docker 网络

所有脚本使用了自定义网络 所以需要提前创建docker网络

```shell
docker network create -d bridge --subnet 172.25.0.0/24 dnm
```