--[[

LuCI njit
#Author:ferstar
#Email:zhangjianfei3@gmail.com

]]--

require("luci.tools.webadmin")

m = Map("njit", translate("njit"), translate("A H3C supplicant on Linux"))

s = m:section(TypedSection, "njit", translate("Config njit"),translate("The options below are all of njit's arguments."))
s.anonymous = true

s:option(Value, "Username", translate("Username")).default="xxx"

pw=s:option(Value, "Password", translate("Password"))
pw.password = true
pw.rmempty = false
pw.default= "***"

nic=s:option(ListValue, "Nic", translate("net card name"),translate("Please make sure you have chose the right net card."))
nic.anonymous = true
for k, v in pairs(luci.sys.net.devices()) do
	nic:value(v)
end

return m
