#/bin/bash

kill -9 $(ps -x | grep '/System/Library/Input Methods/SCIM.app/Contents/PlugIns/SCIM_Extension.appex/Contents/MacOS/SCIM_Extension' | awk '{print $1}')

# 由于输入法内存清理存在问题导致长时间运行后占用内存越来越大。
# 问题应该产生于各种映射未及时清理，导致使用时间越久查找时间越久。
# 解决：重启输入法进程
