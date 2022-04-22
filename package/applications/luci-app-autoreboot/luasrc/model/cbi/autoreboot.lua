require("luci.sys")

m=Map("autoreboot",translate("Scheduled Reboot"),translate("Scheduled reboot Setting"))

s=m:section(TypedSection,"login","")
s.addremove=false
s.anonymous=true

enable=s:option(Flag,"enable",translate("Enable"))
enable.rmempty = false
enable.default=0

week=s:option(ListValue,"week",translate("Week Day"))
week:value(8,translate("none"))
week:value(7,translate("Everyday"))
week:value(1,translate("Monday"))
week:value(2,translate("Tuesday"))
week:value(3,translate("Wednesday"))
week:value(4,translate("Thursday"))
week:value(5,translate("Friday"))
week:value(6,translate("Saturday"))
week:value(0,translate("Sunday"))
week.default=0

hour=s:option(Value,"hour",translate("Hour"))
hour.datatype = "range(0,23)"
hour.rmempty = false

pass=s:option(Value,"minute",translate("Minute"))
pass.datatype = "range(0,59)"
pass.rmempty = false

jede=s:option(ListValue,"jede",translate("jede"))
jede:value(2,translate("2"))
jede:value(3,translate("3"))
jede:value(4,translate("4"))
jede:value(5,translate("5"))
jede:value(6,translate("6"))
jede:value(7,translate("7"))
jede:value(15,translate("15"))
jede:value(30,translate("30"))
jede:value(8,translate("none"))
week.default=0

local e=luci.http.formvalue("cbi.apply")
if e then
  io.popen("/etc/init.d/autoreboot restart")
end

return m
