luci-njit
=========

a web config tool for njit-client

编译方法：

1、如下路径放置：
```
/path/to/your/luci/
		--applications/
				--/luci-njit	#luci相关框架及脚本
		--po/
			--/zh_CN
				--/njit.po	#中文翻译，可自行修改
```
2、修改makefile使其出现在make menuconfig中：
makefile位置：`contrib/package/luci/Makefile` 大概20KB大小，打开，定位到transmission，仿照格式自己另起一段，如下所示：
```
$(eval $(call application,minidlna,LuCI Support for miniDLNA,\
	+PACKAGE_luci-app-minidlna:minidlna))

$(eval $(call application,transmission,LuCI Support for Transmission,\
	+PACKAGE_luci-app-transmission:transmission-daemon))

$(eval $(call application,njit,LuCI Support for njit,\
	+PACKAGE_luci-app-njit:njit8021xclient))

$(eval $(call application,watchcat,LuCI Support for Watchcat,\
	+PACKAGE_luci-app-watchcat:watchcat))
```

注意njit8021xclient是其依赖模块，必须添加。

3、正常编译流程即可看到njit出现在luci应用列表里，编译即可得～

*此处已作古，勿念勿烧纸* `2015年09月30日11:35:16`
