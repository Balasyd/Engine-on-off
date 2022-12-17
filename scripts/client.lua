local player = PlayerPedId()
local vehicle = GetVehiclePedIsIn(player)
local engine = SetVehicleEngineOn(GetVehiclePedIsIn(PlayerPedId()),false,true,true)



RegisterCommand("engine", function(source,args,rawCommand)
   if args[1] == 'off' then
      exports['okokNotify']:Alert('Művelet', 'Leállítottad a motort', 3000, 'success')
      
      SetVehicleEngineOn(GetVehiclePedIsIn(PlayerPedId()),false,true,true)
         
   else
      if args[1] == 'on' then
         exports['okokNotify']:Alert('Művelet', 'Elindítottad a motort', 3000, 'success')
         SetVehicleEngineOn(GetVehiclePedIsIn(PlayerPedId()),true,true,true)
      end
   end
end)
