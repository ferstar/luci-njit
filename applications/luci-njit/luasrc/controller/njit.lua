--[[

LuCI njit
Author:ferstar
Email:zhangjianfei3@gmail.com

]]--

module("luci.controller.njit", package.seeall)

function index()

	if nixio.fs.access("/etc/config/njit") then
	local page 
	page = entry({"admin", "services", "njit"}, cbi("njit"), _("NJIT-CLIENT"))
	page.i18n = "njit"
	page.dependent = true
	end
end
