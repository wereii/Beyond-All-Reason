function gadget:GetInfo()
    return {
        name      = "Critter Spawner",
        desc      = "Spawns critters when trees are reclaimed, at semi random",
        author    = "Hornet",
        date      = "2024",
        license   = "GNU GPL, v2 or later",
        layer     = 0,
        enabled   = false
    }
end


local initialUnits = {}
local crittersPresent = {}
local critterNames = {}
local gaiaID = Spring.GetGaiaTeamID()
local currentCritter = 442

if not gadgetHandler:IsSyncedCode() then
    return
end

for unitDefID, defs in pairs(UnitDefs) do
	if string.find(defs.name, "critter_") then
		critterNames[unitDefID] = defs.name
	end
end


-- 437 = critter_ant
-- 438 = critter_crab
--  439 = critter_duck
--    440 = critter_goldfish
--  441 = critter_gull
--     442 = critter_penguin
--     443 = critter_penguinbro
--    444 = critter_penguinking

function gadget:GameFrame(frame)
    if frame == 15 then
		--clean critters list of irrelevants, if empty add penguins

        for id, unit in pairs(initialUnits) do
            if id==437 or id==438 or id==439 or id==442 then ---ant crab duck penguin
                table.insert(crittersPresent, id)
            end
        end


        if #crittersPresent == 0 then
            table.insert(crittersPresent, 442)--add penwins
        end



    end
end

Spring.Echo('hornet here')
function gadget:UnitCreated(unitID, unitDefID, teamID, builderID)
    local frame = Spring.GetGameFrame ()
    if frame < 10 then

        --scan for critters present
        if teamID == gaiaID and unitDefID > 430 and unitDefID < 450 then --rough double check, this should be only critters anyway
            initialUnits[unitDefID] = unitDefID
        end
    
		
    end
end





function gadget:FeatureDestroyed(featureID, allyTeamID)

    if allyTeamID==2 then
        --10% 1, 3.333% 2, ~1% 3

        if math.random(1,10) == 1 then
            currentCritter = crittersPresent[math.random(1, #crittersPresent)]
            --currentCritter = 442 --testing force; ant 437, crab 438, duck 439, penguin 442
            local posx, posy, posz = Spring.GetFeaturePosition(featureID)
            local critterID = Spring.CreateUnit(currentCritter, posx, posy, posz, "north", Spring.GetGaiaTeamID())
            Spring.SetUnitBlocking(critterID, false)

            if math.random(1,3) == 1 then
                local critterID = Spring.CreateUnit(currentCritter, posx, posy, posz, "north", Spring.GetGaiaTeamID())
                Spring.SetUnitBlocking(critterID, false)
            end

            if math.random(1,3) == 1 then
                local critterID = Spring.CreateUnit(currentCritter, posx, posy, posz, "north", Spring.GetGaiaTeamID())
                Spring.SetUnitBlocking(critterID, false)
            end

        end

        --seperate gull roll
        if math.random(1,20) == 1 then
            local posx, posy, posz = Spring.GetFeaturePosition(featureID)
            local critterID = Spring.CreateUnit(441, posx, posy, posz+5, "north", Spring.GetGaiaTeamID())
        end


        
    end
end
