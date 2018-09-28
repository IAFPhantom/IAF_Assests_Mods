local f16=RAT:New("RAT_F16")
f16:SetDeparture({"Senaki-Kolkhi"})
f16:SetDestination({"Kobuleti"})
-- This makes aircraft respawn at their destination airport and fly back to its departure. Hence, departure cannot be in air.
f16:Commute()
f16:Spawn(5)

local c130=RAT:New("RAT_C130")
-- Change coalition of Yak to blue.
c130:SetCoalitionAircraft("blue")

-- This restricts the possible departure and destination airports the airports belonging to the blue coalition since the coalition is changed manually.
c130:SetCoalition("sameonly")
-- Explicitly exclude Nalchik from possible departures and destinations.
c130:ExcludedAirports({"Batumi"})

c130:Spawn(3)



-- b737=RAT:New("B_737")
-- b747=RAT:New("B_747")
-- b757=RAT:New("B_757")

-- --math.randomseed(os.time())
-- local nX=math.random(1, 8)    --spawn at least one and at most eight (leaving two for the other types)
-- local nY=math.random(1, 9-nX) --spawn at least one but at most eight (leaving at least one for the last type)
-- local nZ=10-nX-nY             --spawn what is left but at least 1.

-- b737:Spawn(nX)
-- b747:Spawn(nY)
-- b757:Spawn(nZ)
-----------------------------------------------------------------------------
-- You can combine DestinationZone() with SetTakeoff("air") so that aircraft will start in air and never touch the ground.
-- yak_northsouth=RAT:New("RAT_YAK", "YAK North-South)
-- yak_northsouth:SetTakeoff("air") 
-- yak_northsouth:DestinationZone()
-- yak_northsouth:SetDeparture({"Zone North", "Zone South"})
-- yak_northsouth:SetDestination({"Zone North", "Zone South"})
-- yak_northsouth:SetFLmin(300)
-- yak_northsouth:SetFLcruise(310)
-- yak_northsouth:SetFLmax(320)
-- yak_northsouth:Spawn(5)

-- yak_westeast=RAT:New("RAT_YAK", "YAK West-East)
-- yak_westeast:SetTakeoff("air") 
-- yak_westeast:DestinationZone()
-- yak_westeast:SetDeparture({"Zone West", "Zone East"})
-- yak_westeast:SetDestination({"Zone West", "Zone East"})
-- yak_westeast:Spawn(5)

-- ReturnZone() makes aircraft fly to a particular zone and then back to their destination airport or zone.
-- local A10C=RAT:New("RAT_A10C")
-- A10C:SetDeparture({"Creech AFB", "Tonopah Test Range Airfield", "Nellis AFB"})
-- A10C:SetDestination({"Range A", "Range B", "Range C"})
-- A10C:ReturnZone()
-- A10C:Spawn(4)