DC_voltage					= CreateGauge()
DC_voltage.arg_number		= 526
DC_voltage.input			= {0.0, 30.0}
DC_voltage.output			= {0.0, 1.0}
DC_voltage.controller		= controllers.DC_voltage

AC_voltage					= CreateGauge()
AC_voltage.arg_number		= 532
AC_voltage.input			= {0.0, 100.0, 150.0, 200.0, 250.0}
AC_voltage.output			= {0.0, 0.14,  0.31,  0.56,  1.0}
AC_voltage.controller		= controllers.AC_voltage

function create_DC_current_gauge(arg_, controller_)
	local _gauge = CreateGauge()
	_gauge.arg_number = arg_
	_gauge.input = {0.0, 400.0}
	_gauge.output = {0.0, 1.0}
	_gauge.controller = controller_
	return _gauge
end

DC_battery_I_current		= create_DC_current_gauge(527, controllers.DC_battery_I_current)
DC_battery_II_current		= create_DC_current_gauge(528, controllers.DC_battery_II_current)
DC_VU_I_current				= create_DC_current_gauge(529, controllers.DC_VU_I_current)
DC_VU_II_current			= create_DC_current_gauge(530, controllers.DC_VU_II_current)
DC_VU_III_current			= create_DC_current_gauge(531, controllers.DC_VU_III_current)

function create_AC_current_gauge(arg_, controller_)
	local _gauge = CreateGauge()
	_gauge.arg_number = arg_
	_gauge.input = {0.0,  50,  70,   90,   120,  130,  140,  150}
	_gauge.output = {0.0, 0.1, 0.2, 0.36, 0.63, 0.75, 0.86, 1.0}
	_gauge.controller = controller_
	return _gauge
end

AC_generator_I_current		= create_AC_current_gauge(533, controllers.AC_generator_I_current)
AC_generator_II_current		= create_AC_current_gauge(534, controllers.AC_generator_II_current)

AntiIce_ampermeter			= create_AC_current_gauge(371, controllers.AntiIce_ampermeter)

need_to_be_closed = true -- lua_state  will be closed in post_initialize()