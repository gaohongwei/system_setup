Check
  lsb_release -a

package
  使用apt-get方法安装的软件，所有下载的deb包都缓存到了
  /var/cache/apt/archives,
  可以把常用的deb包备份出来，甚至做成ISO工具包、刻盘

  dpkg –unpack package.deb	解开 deb 包的内容
  dpkg -i package.deb	安装包
  dpkg -r package	删除包
  dpkg -P package	删除包（包括配置文件）
  dpkg -L package	列出与该包关联的文件
  dpkg -l package	显示该包的版本
  dpkg -S keyword	搜索所属的包内容
  dpkg -l	列出当前已安装的包
  dpkg -c package.deb	列出 deb 包的内容
  dpkg –configure package	配置包
