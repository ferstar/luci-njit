luci-njit
=========

a web config tool for njit-client

���뷽����

1������·�����ã�
/path/to/your/luci/
		--applications/
				--/luci-njit	#luci��ؿ�ܼ��ű�
		--po/
			--/zh_CN
				--/njit.po	#���ķ��룬�������޸�

2���޸�makefileʹ�������make menuconfig�У�
makefileλ�ã�contrib/package/luci/Makefile ���20KB��С���򿪣���λ��transmission�����ո�ʽ�Լ�����һ�Σ�������ʾ��
####
$(eval $(call application,minidlna,LuCI Support for miniDLNA,\
	+PACKAGE_luci-app-minidlna:minidlna))

$(eval $(call application,transmission,LuCI Support for Transmission,\
	+PACKAGE_luci-app-transmission:transmission-daemon))

$(eval $(call application,njit,LuCI Support for njit,\
	+PACKAGE_luci-app-njit:njit8021xclient))

$(eval $(call application,watchcat,LuCI Support for Watchcat,\
	+PACKAGE_luci-app-watchcat:watchcat))
####

ע��njit8021xclient��������ģ�飬������ӡ�

3�������������̼��ɿ���njit������luciӦ���б�����뼴�ɵá�
