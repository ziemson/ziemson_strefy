--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

local holdingUp = false
local strefa = ""
local blipRobbery = nil
ESX = nil

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

function drawTxt(x,y, width, height, scale, text, r,g,b,a, outline)
	SetTextFont(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropshadow(0, 0, 0, 0,255)
	SetTextDropShadow()
	if outline then SetTextOutline() end

	BeginTextCommandDisplayText('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(x - width/2, y - height/2 + 0.005)
end

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

RegisterNetEvent('strefafivem_strefy:aktualneprzejecie')
AddEventHandler('strefafivem_strefy:aktualneprzejecie', function(AktualnaStrefa)
	holdingUp, strefa = true, AktualnaStrefa
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

RegisterNetEvent('strefafivem_strefy:ustawblipahlipa')
AddEventHandler('strefafivem_strefy:ustawblipahlipa', function(lokalizacja)
	blipRobbery = AddBlipForCoord(lokalizacja.x, lokalizacja.y, lokalizacja.z)

	SetBlipSprite(blipRobbery, 161)
	SetBlipScale(blipRobbery, 2.0)
	SetBlipColour(blipRobbery, 3)

	PulseBlip(blipRobbery)
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

RegisterNetEvent('strefafivem_strefy:zadalekospierdoliles')
AddEventHandler('strefafivem_strefy:zadalekospierdoliles', function()
	holdingUp, strefa = false, ''
	ESX.ShowNotification(_U('przejeciestop'))
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

RegisterNetEvent('strefafivem_strefy:strefaprzejetagratki')
AddEventHandler('strefafivem_strefy:strefaprzejetagratki', function(award)
	holdingUp, strefa = false, ''
	ESX.ShowNotification(_U('wykonanieprzejecia', award))
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

RegisterNetEvent('strefafivem_strefy:startujtajmera')
AddEventHandler('strefafivem_strefy:startujtajmera', function()
	local timer = Strefy[strefa].czasprzejecia

	Citizen.CreateThread(function()
		while timer > 0 and holdingUp do
			Citizen.Wait(1000)

			if timer > 0 then
				timer = timer - 1
			end
		end
	end)

	Citizen.CreateThread(function()
		while holdingUp do
			Citizen.Wait(0)
			drawTxt(0.66, 1.44, 1.0, 1.0, 0.4, _U('przejmowankotajmer', timer), 255, 255, 255, 255)
		end
	end)
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

Citizen.CreateThread(function()
	for k,v in pairs(Strefy) do
		local blip = AddBlipForCoord(v.lokalizacja.x, v.lokalizacja.y, v.lokalizacja.z)
		SetBlipSprite(blip, 38)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.nazwastrefsy)
		EndTextCommandSetBlipName(blip)
	end
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local GdzieGangster = GetEntityCoords(PlayerPedId(), true)

		for k,v in pairs(Strefy) do
			local GdzieStrefa = v.lokalizacja
			local DystansSzmato = Vdist(GdzieGangster.x, GdzieGangster.y, GdzieGangster.z, GdzieStrefa.x, GdzieStrefa.y, GdzieStrefa.z)

			if DystansSzmato < Config.Marker.DrawDistance then
				if not holdingUp then
					DrawMarker(Config.Marker.Type, GdzieStrefa.x, GdzieStrefa.y, GdzieStrefa.z - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Marker.x, Config.Marker.y, Config.Marker.z, Config.Marker.r, Config.Marker.g, Config.Marker.b, Config.Marker.a, false, false, 2, false, false, false, false)

					if DystansSzmato < 6.0 then
						ESX.ShowHelpNotification(_U('nacisnijabyprzejac', v.nazwastrefsy))

						if IsControlJustReleased(0, 38) then
							if IsPedArmed(PlayerPedId(), 4) then
								TriggerServerEvent('strefafivem_strefy:przejeciestart', k)
							else
								ESX.ShowNotification(_U('wyjmijbrondebilu'))
							end
						end
					end
				end
			end
		end

		if holdingUp then
			local GdzieStrefa = Strefy[strefa].lokalizacja
			if Vdist(GdzieGangster.x, GdzieGangster.y, GdzieGangster.z, GdzieStrefa.x, GdzieStrefa.y, GdzieStrefa.z) > Config.MaxDoOdejscia then
				TriggerServerEvent('strefafivem_strefy:zadalekospierdoliles', strefa)
			end
		end
	end
end)

--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒