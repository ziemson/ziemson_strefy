--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒
local przejeciestrefy = false
local Gangsterzy = {}
ESX = nil

--d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒--

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒--

RegisterServerEvent('strefafivem_strefy:zadalekospierdoliles')
AddEventHandler('strefafivem_strefy:zadalekospierdoliles', function(AktualnaStrefa)
	local _source = source
	local xPlayers = ESX.GetPlayers()
	przejeciestrefy = false

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
		if xPlayer.job.name == 'org1' and  xPlayer.job.name == 'org2' and  xPlayer.job.name == 'org3' and  xPlayer.job.name == 'org4' and  xPlayer.job.name == 'org5' then
		-- if xPlayer.hiddenjob.name == 'org1' and  xPlayer.hiddenjob.name == 'org2' and  xPlayer.hiddenjob.name == 'org3' and  xPlayer.hiddenjob.name == 'org4' and  xPlayer.hiddenjob.name == 'org5' then

			TriggerClientEvent('esx:showNotification', xPlayers[i], _U('przejeciestopwlubna', Strefy[AktualnaStrefa].nazwastrefsy))
		end
	end

	if Gangsterzy[_source] then
		TriggerClientEvent('strefafivem_strefy:zadalekospierdoliles', _source)
		Gangsterzy[_source] = nil
		wyslijdodiscordatyfajotempa('STREFAFIVEM - STOP PRZEJECIA','[' .. source .. '] ' .. GetPlayerName(source) .. '\n**Hex przejmujacego:** ' .. GetPlayerIdentifier(source), 12320855)
		TriggerClientEvent('esx:showNotification', _source, _U('przejeciestopwlubna', Strefy[AktualnaStrefa].nazwastrefsy))
	end
end)

--d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒--

function getIdentifiers(player)
    local identifiers = {}
    for i = 0, GetNumPlayerIdentifiers(player) - 1 do
        local raw = GetPlayerIdentifier(player, i)
        local tag, value = raw:match("^([^:]+):(.+)$")
        if tag and value then
            identifiers[tag] = value
        end
    end
    return identifiers
end

--d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒--

RegisterServerEvent('strefafivem_strefy:przejeciestart')
AddEventHandler('strefafivem_strefy:przejeciestart', function(AktualnaStrefa)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local identifiers = getIdentifiers(source)
	local discordID = "\n**Discord:** <@" .. identifiers.discord .. ">"

	if Strefy[AktualnaStrefa] then
		local strefa = Strefy[AktualnaStrefa]

		if (os.time() - strefa.ostatniazajeta) < Config.NowePrzejecieStrefy and strefa.ostatniazajeta ~= 0 then
			TriggerClientEvent('esx:showNotification', _source, _U('przejetastrefaczas', Config.NowePrzejecieStrefy - (os.time() - strefa.ostatniazajeta)))
			return
		end

		local gangsta = 0
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			
			if xPlayer.job.name == 'org1' and  xPlayer.job.name == 'org2' and  xPlayer.job.name == 'org3' and  xPlayer.job.name == 'org4' and  xPlayer.job.name == 'org5' then
			-- if xPlayer.hiddenjob.name == 'org1' and  xPlayer.hiddenjob.name == 'org2' and  xPlayer.hiddenjob.name == 'org3' and  xPlayer.hiddenjob.name == 'org4' and  xPlayer.hiddenjob.name == 'org5' then
				gangsta = gangsta + 1
			end
		end

		if not przejeciestrefy then
			if gangsta >= Config.MinCzlonkowieOrg then
				przejeciestrefy = true

				for i=1, #xPlayers, 1 do
					local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
					
					if xPlayer.job.name == 'org1' and  xPlayer.job.name == 'org2' and  xPlayer.job.name == 'org3' and  xPlayer.job.name == 'org4' and  xPlayer.job.name == 'org5' then
					-- if xPlayer.hiddenjob.name == 'org1' and  xPlayer.hiddenjob.name == 'org2' and  xPlayer.hiddenjob.name == 'org3' and  xPlayer.hiddenjob.name == 'org4' and  xPlayer.hiddenjob.name == 'org5' then

						TriggerClientEvent('esx:showNotification', xPlayers[i], _U('przejeciejuzwystartowane', strefa.nazwastrefsy))
						TriggerClientEvent('strefafivem_strefy:ustawblipahlipa', xPlayers[i], Strefy[AktualnaStrefa].lokalizacja)
					end
				end
				wyslijdodiscordatyfajotempa('STREFAFIVEM - PRZEJECIE','[' .. source .. '] ' .. GetPlayerName(source) .. '\n**Hex przejmującego:** ' .. GetPlayerIdentifier(source) .. ''.. discordID ..'\n**Ilość gangsterów w grze:** ``' .. gangsta .. '``\n**Zdobyte pieniądze:** ``' .. strefa.nagrodapieniezna ..'$``\n**Strefa:** ``'.. strefa.nazwastrefsy ..'``', 12745742)
				TriggerClientEvent('esx:showNotification', _source, _U('przejeciestrefito', strefa.nazwastrefsy))
				TriggerClientEvent('esx:showNotification', _source, _U('infoostarcie'))
				
				TriggerClientEvent('strefafivem_strefy:aktualneprzejecie', _source, AktualnaStrefa)
				TriggerClientEvent('strefafivem_strefy:startujtajmera', _source)
				
				Strefy[AktualnaStrefa].ostatniazajeta = os.time()
				Gangsterzy[_source] = AktualnaStrefa

				SetTimeout(strefa.czasprzejecia * 1000, function()
					if Gangsterzy[_source] then
						przejeciestrefy = false
						if xPlayer then
							TriggerClientEvent('strefafivem_strefy:strefaprzejetagratki', _source, strefa.nagrodapieniezna)

							if Config.CzarnaGotuwa then
								xPlayer.addAccountMoney('black_money', strefa.nagrodapieniezna)
							else
								xPlayer.addAccountMoney('money', strefa.nagrodapieniezna)
							end
							
							local xPlayers, xPlayer = ESX.GetPlayers(), nil
							for i=1, #xPlayers, 1 do
								xPlayer = ESX.GetPlayerFromId(xPlayers[i])

								if xPlayer.job.name == 'org1' and  xPlayer.job.name == 'org2' and  xPlayer.job.name == 'org3' and  xPlayer.job.name == 'org4' and  xPlayer.job.name == 'org5' then
								-- if xPlayer.hiddenjob.name == 'org1' and  xPlayer.hiddenjob.name == 'org2' and  xPlayer.hiddenjob.name == 'org3' and  xPlayer.hiddenjob.name == 'org4' and  xPlayer.hiddenjob.name == 'org5' then

									TriggerClientEvent('esx:showNotification', xPlayers[i], _U('wykonanieprzejeciawlubna', strefa.nazwastrefsy))
								end
							end
						end
					end
				end)
			else
				TriggerClientEvent('esx:showNotification', _source, _U('brakludziworg', Config.MinCzlonkowieOrg))
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('przejeciewtoku'))
		end
	end
end)

--d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒--

function wyslijdodiscordatyfajotempa(name,message,color)

	local DiscordWebHook = "" -- Tutaj wklejasz webhooka do logów
	local date = os.date('*t')

	if date.month < 10 then date.month = '0' .. tostring(date.month) end
	if date.day < 10 then date.day = '0' .. tostring(date.day) end
	if date.hour < 10 then date.hour = '0' .. tostring(date.hour) end
	if date.min < 10 then date.min = '0' .. tostring(date.min) end
	if date.sec < 10 then date.sec = '0' .. tostring(date.sec) end
	local date = (''..date.day .. '.' .. date.month .. '.' .. date.year .. ' - ' .. date.hour .. ':' .. date.min .. ':' .. date.sec..'')
  
local embeds = {
  {
	  ["description"]= message,
	  ["type"]= "rich",
	  ["color"] = color,
	  ["footer"]=  {
	  ["text"]= "" ..date.."",
	 },
  }
}

if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end
--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒
  

  
