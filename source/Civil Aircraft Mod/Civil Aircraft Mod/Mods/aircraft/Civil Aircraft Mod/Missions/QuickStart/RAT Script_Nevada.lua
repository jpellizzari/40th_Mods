-- Author: cdpkobra
-- Author: funkyfranky
------------------------------------------------------------------------------------------------------------
--[[
-- Create RAT object. The only required parameter is the name of the template group in the mission editor.
local a380=RAT:New("RAT_A380")

-- Spawn five aircraft.
a380:Spawn(5)

]]
------------------------------------------------------------------------------------------------------------

--[[ 
--RAT-002 - Fester Abflug
local a380=RAT:New("RAT_A380")

-- Set destination airport.
a380:SetDeparture("Gudauta")

-- Spawn five aircraft.
a380:Spawn(5)
]]
------------------------------------------------------------------------------------------------------------

--[[
--RAT-003 - Festes Ziel

local a380=RAT:New("RAT_a380")

-- Set destination airport.
a380:SetDestination("Sochi-Adler")

-- Spawn five aircraft.
a380:Spawn(5)
]]
------------------------------------------------------------------------------------------------------------

--[[
--RAT-004 - Fester Abflug und Zielort

local a380=RAT:New("RAT_a380")

-- Set destination airports. If multiple destinations are specified, they have to be given as a table, i.e. in curly brackets {}.
a380:SetDeparture({"Gudauta", "Batumi"})

-- Set destination airports. One of these is chosen randomly as destination.
a380:SetDestination({"Gelendzhik", "Beslan"})

-- Spawn five aircraft.
a380:Spawn(5)

]]

-- oder

--[[

RAT:AddFriendlyAirportsToDepartures()
RAT:AddFriendlyAirportsToDestinations()

]]

------------------------------------------------------------------------------------------------------------

--[[
--RAT-006 - Reise fortsetzen

local a380=RAT:New("RAT_a380")

-- Set Gudauta as departure airport for all spawned aircraft. (Not required for ContinueJourney() to work.)
a380:SetDeparture("Gudauta")

-- This makes aircraft respawn at their destination airport instead of another random airport.
a380:ContinueJourney()

-- Spawn five aircraft.
a380:Spawn(5)

]]
------------------------------------------------------------------------------------------------------------

--[[
--RAT-008 - Spawn in Air

local a380=RAT:New("RAT_a380")

-- Set takeoff type to air.
a380:SetTakeoff("air")

-- Spawn ten a380.
a380:Spawn(10)


local b727=RAT:New("RAT_b727")

-- Set takeoff type to air.
b727:SetTakeoff("air")

-- Set departure zones for b727.
b727:SetDeparture({"RAT Zone West", "RAT Zone South"})

-- Spawn five b727.
b727:Spawn(5)


local b737=RAT:New("RAT_b737")

-- Set takeoff type to air.
b737:SetTakeoff("air")

-- Set departure zones for b727. You can mix zone names and airport names.
b737:SetDeparture({"RAT Zone North", "Anapa-Vityazevo"})

-- Spawn eight b737.
b737:Spawn(8)

]]
------------------------------------------------------------------------------------------------------------

--[[
--RAT-009 - Set Cruise Altitude / Reiseflughöhe einstellen

local a380=RAT:New("RAT_a380")

-- Stellen Sie die Mindestflughöhe ein. Unterhalb dieser Höhe wird kein Flugzeug fliegen.
a380:SetFLmin(230)-- Fuss oder meter ??

-- Stellen Sie die maximale Flughöhe auf 32.000 ft ASL ein. Keinem Flugzeug wird eine Reiseflughöhe über dieser Höhe zugewiesen.
a380:SetFLmax(330)-- Fuss oder meter ??

-- Reiseflughöhe auf 29.500 ft einstellen. Die endgültige Wahl ist zufällig zwischen FLmin und FLmax, aber mehr Flugzeuge werden in seiner oder in der Nähe dieser Höhe fliegen.
a380:SetFLcruise(295)-- Fuss oder meter ??

-- Spawn five a380.
a380:Spawn(5)


local b727=RAT:New("RAT_b727")

-- Set departure zones for b727.
b727:SetDeparture("Tbilisi-Lochini")

-- Alle Flugzeuge fliegen mindestens in einer Höhe von 8.5 km ASL.
b727:SetMinCruiseAltitude(8500)

-- Spawn two b727.
b727:Spawn(2)

]]
------------------------------------------------------------------------------------------------------------
-- template gruppe
local a320=RAT:New("RAT_A320")
local a380=RAT:New("RAT_A380")
local b727=RAT:New("RAT_B727")
local b737=RAT:New("RAT_B737")
local b747=RAT:New("RAT_B747")
local b757=RAT:New("RAT_B757")
local cessna=RAT:New("RAT_Cessna")

local a320air=RAT:New("RAT_A320air")
local a380air=RAT:New("RAT_A380air")
local b727air=RAT:New("RAT_B727air")
local b737air=RAT:New("RAT_B737air")
local b747air=RAT:New("RAT_B747air")
local b757air=RAT:New("RAT_B757air")
local cessnaair=RAT:New("RAT_Cessnaair")
--------------------------------------------------------------------------------------------
-- skins
local a320skins={"Aeroflot", "Aeroflot 1", "Air Asia", "Air Berlin", "Air Berlin FFO", "Air Berlin OLT", "Air France", "Air Moldova", "Al Maha", "American Airlines", "British Airways", "Cebu Pacific", "Clean", "Easy Jet", "Easy Jet w", "Eurowings", "Eurowings BVB09", "Eurowings Europa Park", "Fly Georgia", "Fly Niki", "Frontier", "Gulf Air", "Iran Air", "JetBlue", "Kish Air", "Kuwait Airways", "Lufthansa", "MEA", "S7", "Saudia", "Small Planet", "SWISS", "Thomas Cook", "Tunis Air", "Turkish Airlines", "Ural Airlines", "WiZZ", "WiZZ Budapest", "WOW"}

local a380skins={"Air France", "BA", "China Southern", "Emirates", "KA", "LH", "Qantas Airways", "QTR", "SA", "TA"}

local b727skins={"ZERO G", "UNITED Old", "Southwest", "Singapore Airlines", "Lufthansa Oberhausen Old", "FedEx", "AEROFLOT", "Air France", "Alaska", "Alitalia", "American Airlines", "Delta Airlines", "Delta Airlines OLD", "Hapag Lloyd", "Lufthansa", "Northwest", "Pan Am", "UNITED"}

local b737skins={"Air Algerie", "Air Berlin", "Air France", "airBaltic", "Airzena", "AM", "American_Airlines", "British Airways", "C40s", "Disney", "EA", "easyJet", "FINNAIR", "HARIBO", "JA", "Jet2", "kulula", "LH", "Lufthansa BA", "Lufthansa KR", "OMAN AIR", "PAN AM", "Polskie Linie Lotnicze LOT", "QANTAS", "RYANAIR", "SouthWest Lone Star", "ThomsonFly", "TNT", "Ukraine Airlines", "UPS"}
 
local b747skins={"AF", "AI", "CP", "IM", "KLM", "LH", "NW", "TA", "PA", "QA", "TA"}

local b757skins={"AA", "BA", "Delta", "DHL", "easyJet", "Swiss", "Thomson"}

local cessnaskins={"D-EKVW", "HellenicAF", "Muster", "N9572H", "SEagle blue", "SEagle red", "USAF-Academy", "NV5-BUGW", "VH-JGA"}

a320:Livery(a320skins)
a380:Livery(a380skins)
b727:Livery(b727skins)
b737:Livery(b737skins)
b747:Livery(b747skins)
b757:Livery(b757skins)
cessna:Livery(cessnaskins)
--------------------------------------------------------------------------------------------
--skins air
local a320airskins={"Aeroflot", "Aeroflot 1", "Air Asia", "Air Berlin", "Air Berlin FFO", "Air Berlin OLT", "Air France", "Air Moldova", "Al Maha", "American Airlines", "British Airways", "Cebu Pacific", "Clean", "Easy Jet", "Easy Jet w", "Eurowings", "Eurowings BVB09", "Eurowings Europa Park", "Fly Georgia", "Fly Niki", "Frontier", "Gulf Air", "Iran Air", "JetBlue", "Kish Air", "Kuwait Airways", "Lufthansa", "MEA", "S7", "Saudia", "Small Planet", "SWISS", "Thomas Cook", "Tunis Air", "Turkish Airlines", "Ural Airlines", "WiZZ", "WiZZ Budapest", "WOW"}

local a380airskins={"Air France", "BA", "China Southern", "Emirates", "KA", "LH", "Qantas Airways", "QTR", "SA", "TA"}

local b727airskins={"ZERO G", "UNITED Old", "Southwest", "Singapore Airlines", "Lufthansa Oberhausen Old", "FedEx", "AEROFLOT", "Air France", "Alaska", "Alitalia", "American Airlines", "Delta Airlines", "Delta Airlines OLD", "Hapag Lloyd", "Lufthansa", "Northwest", "Pan Am", "UNITED"}

local b737airskins={"Air Algerie", "Air Berlin", "Air France", "airBaltic", "Airzena", "AM", "American_Airlines", "British Airways", "C40s", "Disney", "EA", "easyJet", "FINNAIR", "HARIBO", "JA", "Jet2", "kulula", "LH", "Lufthansa BA", "Lufthansa KR", "OMAN AIR", "PAN AM", "Polskie Linie Lotnicze LOT", "QANTAS", "RYANAIR", "SouthWest Lone Star", "ThomsonFly", "TNT", "Ukraine Airlines", "UPS"}
 
local b747airskins={"AF", "AI", "CP", "IM", "KLM", "LH", "NW", "TA", "PA", "QA", "TA"}

local b757airskins={"AA", "BA", "Delta", "DHL", "easyJet", "Swiss", "Thomson"}

local cessnaairskins={"D-EKVW", "HellenicAF", "Muster", "N9572H", "SEagle blue", "SEagle red", "USAF-Academy", "NV5-BUGW", "VH-JGA"}

a320air:Livery(a320airskins)
a380air:Livery(a380airskins)
b727air:Livery(b727airskins)
b737air:Livery(b737airskins)
b747air:Livery(b747airskins)
b757air:Livery(b757airskins)
cessnaair:Livery(cessnaairskins)
--------------------------------------------------------------------------------------------
--Reiseflughöhe einstellen
a320:SetFLmin(295)-- Fuss
a320:SetFLmax(360)-- Fuss
a320:SetFLcruise(330)-- Fuss

a380:SetFLmin(295)-- Fuss
a380:SetFLmax(360)-- Fuss
a380:SetFLcruise(330)-- Fuss

b727:SetFLmin(295)
b727:SetFLmax(360)
b727:SetFLcruise(330)

b737:SetFLmin(295)
b737:SetFLmax(360)
b737:SetFLcruise(330)

b747:SetFLmin(295)
b747:SetFLmax(360)
b747:SetFLcruise(330)

b757:SetFLmin(295)
b757:SetFLmax(360)
b757:SetFLcruise(330)

cessna:SetFLmin(7)
cessna:SetFLmax(164)
cessna:SetFLcruise(22)

--Reiseflughöhe einstellen air
a320air:SetFLmin(295)-- Fuss
a320air:SetFLmax(360)-- Fuss
a320air:SetFLcruise(330)-- Fuss

a380air:SetFLmin(295)-- Fuss
a380air:SetFLmax(360)-- Fuss
a380air:SetFLcruise(330)-- Fuss

b727air:SetFLmin(295)
b727air:SetFLmax(360)
b727air:SetFLcruise(330)

b737air:SetFLmin(295)
b737air:SetFLmax(360)
b737air:SetFLcruise(330)

b747air:SetFLmin(295)
b747air:SetFLmax(360)
b747air:SetFLcruise(330)

b757air:SetFLmin(295)
b757air:SetFLmax(360)
b757air:SetFLcruise(330)

cessnaair:SetFLmin(7)
cessnaair:SetFLmax(164)
cessnaair:SetFLcruise(22)
--------------------------------------------------------------------------------------------
--Fester Abflug
a320:SetDeparture({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

a380:SetDeparture({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b727:SetDeparture({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b737:SetDeparture({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b747:SetDeparture({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b757:SetDeparture({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

cessna:SetDeparture({"Beatty Airport","Boulder City Airport","Creech AFB","Echo Bay","groom Lake AFB","Henderson Executive Airport","Jean Airport","Laughlin Airport","Lincoln County","McCarran International Airport","Mesquite","Nellis AFB","North Las Vegas","Pahute Mesa Airstrip","Tonopah Airport","Tonopah test Range Airfield"})

--------------------------------------------------------------------------------------------
--Festes Ziel
a320:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

a380:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b727:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b737:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b747:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b757:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

cessna:SetDestination({"Beatty Airport","Boulder City Airport","Creech AFB","Echo Bay","groom Lake AFB","Henderson Executive Airport","Jean Airport","Laughlin Airport","Lincoln County","McCarran International Airport","Mesquite","Nellis AFB","North Las Vegas","Pahute Mesa Airstrip","Tonopah Airport","Tonopah test Range Airfield"})

--------------------------------------------------------------------------------------------
--Festes Ziel Air
a320air:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

a380air:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b727air:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b737air:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b747air:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

b757air:SetDestination({"groom Lake AFB","Henderson Executive Airport","Laughlin Airport","McCarran International Airport","Nellis AFB","Tonopah Airport","Tonopah Test Range Airfield"})

cessnaair:SetDestination({"Beatty Airport","Boulder City Airport","Creech AFB","Echo Bay","groom Lake AFB","Henderson Executive Airport","Jean Airport","Laughlin Airport","Lincoln County","McCarran International Airport","Mesquite","Nellis AFB","North Las Vegas","Pahute Mesa Airstrip","Tonopah Airport","Tonopah test Range Airfield"})

--------------------------------------------------------------------------------------------

--Spawn
a320:Spawn(2)
a380:Spawn(2)
b727:Spawn(2)
b737:Spawn(2)
b747:Spawn(2)
b757:Spawn(2)
cessna:Spawn(2)

--Spawn in Air
a320air:SetTakeoff("air")
a320air:Spawn(3)
a380air:SetTakeoff("air")
a380air:Spawn(3)
b727air:SetTakeoff("air")
b727air:Spawn(3)
b737air:SetTakeoff("air")
b737air:Spawn(3)
b747air:SetTakeoff("air")
b747air:Spawn(3)
b757air:SetTakeoff("air")
b757air:Spawn(3)
cessnaair:SetTakeoff("air")
cessnaair:Spawn(3)







