--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒
Config = {}
Config.Locale = 'polskagurom' -- Ustawiasz język który jest w folderze locales (tylko polski jest ustawiony na ten moment)

--d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒--

Config.Marker = { -- Ustawiasz marker (MARKER TO NIE BLIP! MARKER TO JEST COŚ NA ZIEMI A BLIP NA MAPIE!)
	r = 250, g = 0, b = 0, a = 100, 
	x = 15.0, y = 15.0, z = 15.5,
	DrawDistance = 50.0, Type = 25
}

Config.MinCzlonkowieOrg = 0 -- Ustawiasz ilość gangsterów którzy muszą być w grze
Config.NowePrzejecieStrefy = 1200 -- Czas który mija od przejęcia strefy

Config.MaxDoOdejscia = 20 -- Jak daleko możesz odejść od kółeczka
Config.CzarnaGotuwa = true -- Ustawiasz czy chcesz brudny czy zwykły hajs

--d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒--

Strefy = { -- Tutaj dodajesz sobie stefy

	["sandy"] = {
		lokalizacja = { x = 1731.64, y = 3310.66, z = 41.32 }, -- Tutaj dodajesz kordy
		nagrodapieniezna = math.random(50000, 200000), -- Ile hajsu ma się dostać od najmniejszego do największego
		nazwastrefsy = "Lotnisko Sandy-Shores", -- Nazwa strefy jaka ma być
		czasprzejecia = 600, -- Ile ma się przejmować strefa
		ostatniazajeta = 0 -- TUTAJ NIC NIE ZMIENIAJ BO ZJEBIESZ BAJERE
	},

	["losty"] = {
		lokalizacja = { x = 60.76, y = 3716.77, z = 39.85 },
		nagrodapieniezna = math.random(50000, 200000),
		nazwastrefsy = "Mini-Losty",
		czasprzejecia = 600,
		ostatniazajeta = 0
	},

}
-- CREATED BY ziemson#7028 for d𝖎𝖘𝖈𝖔𝖗𝖉.𝖌𝖌/𝖘𝖙𝖗𝖊𝖋𝖆𝖋𝖎𝖛𝖊𝖒
--░██████╗████████╗██████╗░███████╗███████╗░█████╗░  ███████╗██╗██╗░░░██╗███████╗███╗░░░███╗
--██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝██╔══██╗  ██╔════╝██║██║░░░██║██╔════╝████╗░████║
--╚█████╗░░░░██║░░░██████╔╝█████╗░░█████╗░░███████║  █████╗░░██║╚██╗░██╔╝█████╗░░██╔████╔██║
--░╚═══██╗░░░██║░░░██╔══██╗██╔══╝░░██╔══╝░░██╔══██║  ██╔══╝░░██║░╚████╔╝░██╔══╝░░██║╚██╔╝██║
--██████╔╝░░░██║░░░██║░░██║███████╗██║░░░░░██║░░██║  ██║░░░░░██║░░╚██╔╝░░███████╗██║░╚═╝░██║
--╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░░░░╚═╝
