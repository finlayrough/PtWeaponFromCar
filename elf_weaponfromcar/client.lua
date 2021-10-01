
--   made by ELF#0001 <- my discord --
--  3dme made by Elio  --



--   wfc settings   --

local duffle = true -- do not use wip not working -- change if you dont want weapons out of a duffle-bag

local tafbw = true -- Text Above For Big Weapons - change if you dont want text above for the weapons you take out of the car 
local tafsw = true -- Text Above For Small Weapons -||-
local tafmw = true -- Text Above For Melee Weapons -||-
local tafdb = true -- Text Above For Duffle-Bag -||-


-- 3dtext settings --

local color = { r = 250, g = 140, b = 0, alpha = 255 } -- color of the text 
local font = 0 -- font of the text
local time = 4 -- duration of the display of the text in seconds
local background = {
    enable = false, -- background toggle
    color = { r = 35, g = 35, b = 35, alpha = 200 }, -- background color
}
local chatMessage = false 
local dropShadow = false



-- list of weapons to be taken out of a car

bigweaponslist = {	
	"WEAPON_MICROSMG",
	"WEAPON_MINISMG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_ASSAULTSMG",
	"WEAPON_MG",
	"WEAPON_COMBATMG",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_COMBATPDW",
	"WEAPON_GUSENBERG",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_BULLPUPRIFLE",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_SWEEPERSHOTGUN",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_MUSKET",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_DBSHOTGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_RPG",
	"WEAPON_MINIGUN",
	"WEAPON_FIREWORK",
	"WEAPON_RAILGUN",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_SPECIALCARBINE_MK2",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_PUMPSHOTGUN_MK2",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_RAYPISTOL",
	"WEAPON_RAYCARBINE",
	"WEAPON_RAYMINIGUN",
	"WEAPON_DIGISCANNER"
}



-- list of weapons for small weapons message

smallweaponslist = {
	"WEAPON_REVOLVER",
	"WEAPON_PISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_STUNGUN",
	"WEAPON_FLAREGUN",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_DOUBLEACTION",
	
	"WEAPON_PROXMINE",
	"WEAPON_BZGAS",
	"WEAPON_SMOKEGRENADE",
	"WEAPON_MOLOTOV",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_PETROLCAN",
	"WEAPON_SNOWBALL",
	"WEAPON_FLARE",
	"WEAPON_BALL",
	"WEAPON_GRENADE",
	"WEAPON_STICKYBOMB"
}



-- list of weapons for melee weapons message

meleeweaponslist = {
	"WEAPON_KNIFE",
	"WEAPON_KNUCKLE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BAT",
	"WEAPON_GOLFCLUB",
	"WEAPON_CROWBAR",
	"WEAPON_BOTTLE",
	"WEAPON_DAGGER",
	"WEAPON_HATCHET",
	"WEAPON_MACHETE",
	--"WEAPON_FLASHLIGHT",
	"WEAPON_SWITCHBLADE",
	"WEAPON_POOLCUE",
	"WEAPON_PIPEWRENCH"
}



--   end of settings   --

-- do not edit !!

RegisterCommand('vinfo', function(source, args)
    playerPed = GetPlayerPed(-1)
	if playerPed then
		local weapon = GetSelectedPedWeapon(playerPed, true)
		nameWeapon(weapon)
	end
end)

RegisterCommand('cinfo', function(source, args)
    playerPed = GetPlayerPed(-1)
	if playerPed then
		getCustomization()
	end
end)

-- do not edit !!

allweaponslist = {
	"WEAPON_MICROSMG",
	"WEAPON_MINISMG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_ASSAULTSMG",
	"WEAPON_MG",
	"WEAPON_COMBATMG",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_COMBATPDW",
	"WEAPON_GUSENBERG",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_BULLPUPRIFLE",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_SWEEPERSHOTGUN",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_MUSKET",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_DBSHOTGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_RPG",
	"WEAPON_MINIGUN",
	"WEAPON_FIREWORK",
	"WEAPON_RAILGUN",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_SPECIALCARBINE_MK2",
	"WEAPON_BULLPUPRIFLE_MK2",
	"WEAPON_PUMPSHOTGUN_MK2",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_RAYPISTOL",
	"WEAPON_RAYCARBINE",
	"WEAPON_RAYMINIGUN",
	"WEAPON_DIGISCANNER",
	
	"WEAPON_REVOLVER",
	"WEAPON_PISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_STUNGUN",
	"WEAPON_FLAREGUN",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_DOUBLEACTION",
	
	"WEAPON_PROXMINE",
	"WEAPON_BZGAS",
	"WEAPON_SMOKEGRENADE",
	"WEAPON_MOLOTOV",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_PETROLCAN",
	"WEAPON_SNOWBALL",
	"WEAPON_FLARE",
	"WEAPON_BALL",
	"WEAPON_GRENADE",
	"WEAPON_STICKYBOMB",
	
	"WEAPON_KNIFE",
	"WEAPON_KNUCKLE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BAT",
	"WEAPON_GOLFCLUB",
	"WEAPON_CROWBAR",
	"WEAPON_BOTTLE",
	"WEAPON_DAGGER",
	"WEAPON_HATCHET",
	"WEAPON_MACHETE",
	"WEAPON_FLASHLIGHT",
	"WEAPON_SWITCHBLADE",
	"WEAPON_POOLCUE",
	"WEAPON_PIPEWRENCH"
}

-- do not edit !!

daw = false
bigWeaponOut = false
smallWeaponOut = false
meleeWeaponOut = false

-- do not edit !!

Citizen.CreateThread(function()
	while true do
		Wait(250)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			local weapon = GetSelectedPedWeapon(playerPed, true)
			if daw == true then
				RemoveAllPedWeapons(playerPed, true)
			else
				if isWeaponBig(weapon) then
					local vehicle = VehicleInFront()
					if GetVehiclePedIsIn(playerPed, false) == 0 and DoesEntityExist(vehicle) and IsEntityAVehicle(vehicle) and bigWeaponOut == false then
						bigWeaponOut = true
						SetVehicleDoorOpen(vehicle, 5, false, false)
						if tafbw == true then
						end
						Citizen.Wait(2000)
						SetVehicleDoorShut(vehicle, 5, false)
					else
						if duffle == true then
							if IsPedModel(playerPed,1885233650) and bigWeaponOut == false and GetVehiclePedIsIn(playerPed, false) == 0 then -- male
								--drawNotification("* " ..GetPedDrawableVariation(playerPed,5).. "," ..GetPedTextureVariation(playerPed,5).. "," ..GetPedPaletteVariation(playerPed,5).. " *")
								if GetPedDrawableVariation(playerPed,5) == 45 and GetPedTextureVariation(playerPed,5) == 0 and GetPedPaletteVariation(playerPed,5) == 0 then
									bigWeaponOut = true
					

								else
									Wait(1)
									drawNotification("~p~ELF ~r~"..dbtxterr.."")
									SetCurrentPedWeapon(playerPed, -1569615261)
								end
							else	
								if IsPedModel(playerPed,-1667301416) and bigWeaponOut == false and GetVehiclePedIsIn(playerPed, false) == 0 then -- female
									--drawNotification("* " ..GetPedDrawableVariation(playerPed,5).. "," ..GetPedTextureVariation(playerPed,5).. "," ..GetPedPaletteVariation(playerPed,5).. " *")
									if GetPedDrawableVariation(playerPed,5) == 45 and GetPedTextureVariation(playerPed,5) == 0 and GetPedPaletteVariation(playerPed,5) == 0 then
										bigWeaponOut = true
										if tafdb == true then

									else
										SetCurrentPedWeapon(playerPed, -1569615261)
									end
								else
									if bigWeaponOut == false and GetVehiclePedIsIn(playerPed, false) == 0 then
									Wait(1)
									drawNotification("~p~ELF ~r~"..dbtxterr.."")
									SetCurrentPedWeapon(playerPed, -1569615261)
									end
								end
							end
						else
							if bigWeaponOut == false and GetVehiclePedIsIn(playerPed, false) == 0 then
								Wait(1)
								drawNotification("~p~ELF ~r~"..bwtxterr.."")
								SetCurrentPedWeapon(playerPed, -1569615261)
							end
						end
					end
				end
				if GetVehiclePedIsIn(playerPed, false) == 0 and isWeaponSmall(weapon) then
					if smallWeaponOut == false then
						smallWeaponOut = true
						if tafsw == true then
						Citizen.Wait(100)
					end
				end
				if GetVehiclePedIsIn(playerPed, false) == 0 and isWeaponMelee(weapon) then
					if meleeWeaponOut == false then
						meleeWeaponOut = true
						if tafmw == true then
						Citizen.Wait(100)
					end
				end
			end
		end
	end
end)

-- do not edit !!

Citizen.CreateThread(function()
	while true do
		Wait(500)
		
		playerPed = GetPlayerPed(-1)
		if playerPed then
			local weapon = GetSelectedPedWeapon(playerPed, true)
			if not isWeaponBig(weapon) and bigWeaponOut == true then
				Wait(100)
				bigWeaponOut = false
			end
			if not isWeaponSmall(weapon) and smallWeaponOut == true then
				Wait(100)
				smallWeaponOut = false
			end
			if not isWeaponMelee(weapon) and meleeWeaponOut == true then
				Wait(100)
				meleeWeaponOut = false
			end
			--[[
			if IsPedModel(playerPed,1885233650) and bigWeaponOut == true then
				if GetPedDrawableVariation(playerPed,5) ~= 45 or GetPedTextureVariation(playerPed,5) ~= 0 or GetPedPaletteVariation(playerPed,5) ~= 0 then
					Wait(100)
					bigWeaponOut = false
				end
			end
			if IsPedModel(playerPed,-1667301416) and bigWeaponOut == true then
				if GetPedDrawableVariation(playerPed,5) ~= 45 or GetPedTextureVariation(playerPed,5) ~= 0 or GetPedPaletteVariation(playerPed,5) ~= 0 then
					Wait(100)
					bigWeaponOut = false
				end
			end
			]]--
		end
	end
end)

-- do not edit !!

function VehicleInFront()
	local player = PlayerPedId()
    local pos = GetEntityCoords(player)
    local entityWorld = GetOffsetFromEntityInWorldCoords(player, 0.0, 2.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 30, player, 0)
    local _, _, _, _, result = GetRaycastResult(rayHandle)
    return result
end

-- do not edit !!

function isWeaponBig(model)
	for _, bigWeapon in pairs(bigweaponslist) do
		if model == GetHashKey(bigWeapon) then
			return true
		end
	end

	return false
end

-- do not edit !!

function isWeaponSmall(model)
	for _, smallWeapon in pairs(smallweaponslist) do
		if model == GetHashKey(smallWeapon) then
			return true
		end
	end

	return false
end

-- do not edit !!

function isWeaponMelee(model)
	for _, meleeWeapon in pairs(meleeweaponslist) do
		if model == GetHashKey(meleeWeapon) then
			return true
		end
	end

	return false
end



function drawNotification(Notification)
	SetNotificationTextEntry('STRING')
	AddTextComponentString(Notification)
	DrawNotification(false, false)
end

function getCustomization()
	local ped = GetPlayerPed(-1)

	local custom = {}

	custom.modelhash = GetEntityModel(ped)

	-- ped parts
	for i=0,20 do -- index limit to 20
		custom[i] = {GetPedDrawableVariation(ped,i), GetPedTextureVariation(ped,i), GetPedPaletteVariation(ped,i)}
		drawNotification("ped " ..GetPedDrawableVariation(ped,i).. " " ..GetPedTextureVariation(ped,i).. " " ..GetPedPaletteVariation(ped,i).. " ped")
	end

	-- props
	for i=0,10 do -- index limit to 10
		custom["p"..i] = {GetPedPropIndex(ped,i), math.max(GetPedPropTextureIndex(ped,i),0)}
		drawNotification("props " ..GetPedPropIndex(ped,i).. " " ..math.max(GetPedPropTextureIndex(ped,i),0).. " props")
	end

	

	return custom
end
