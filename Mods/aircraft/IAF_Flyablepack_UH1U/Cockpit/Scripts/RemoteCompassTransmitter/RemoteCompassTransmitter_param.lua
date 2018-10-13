device_timer_dt = 0.02

max_pitch_bank = math.rad(30.0) -- radians 30. gr roll and pitch mechanical freedom of pendulus element

-- radians
deviation = 
{
	0.0, 1.3,
	10.0, 0.9,
	20.0, 0.4,
	30.0, -0.03,
	40.0, -0.35,
	50.0, -0.25,
	60.0, 0.0,
	70.0, 0.4,
	80.0, 0.7,
	90.0, 0.65,
	100.0, 0.05,
	110.0, -0.6,
	120.0, -1.05,
	130.0, -0.98,
	140.0, -0.2,
	150.0, 1.0,
	160.0, 2.3,
	170.0, 3.15,
	180.0, 3.35,
	190.0, 2.95,
	200.0, 2.55,
	210.0, 2.0,
	220.0, 1.2,
	230.0, 0.7,
	240.0, 0.2,
	250.0, -0.2,
	260.0, -0.4,
	270.0, -0.15,
	280.0, 0.15,
	290.0, 0.4,
	300.0, 0.55,
	310.0, 0.35,
	320.0, -0.4,
	330.0, -1.25,
	340.0, -1.9,
	350.0, -0.85,
	360.0, 1.3
}

K_deviation = 0.9

i = 0
for k, v in pairs(deviation) do
	i = i+1
	if math.fmod(i + 1.0, 2.0) > 0.0 then
		deviation[i] = deviation[i] * K_deviation
	end
	
	-- to radians
	deviation[i] = math.rad(deviation[i])
end

need_to_be_closed = true -- lua_state  will be closed in post_initialize()