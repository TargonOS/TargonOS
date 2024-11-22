
local movedY = 0
local Distance = 5

local nameLog = "minecraft:oak_log"
local nameSapling = "minecraft:oak_sapling"

function _entry()
    for i=0, Distance do
        turtle.forward()
    end
end

function inspectInfront()
    success, data = turtle.inspect()
    if success == false then
        print("a")
        return 0
    end
    
    print(textutils.serialise(data.name))
end

function checkChest()
    local chest = peripheral.find("minecraft:chest")
    for slot, item in pairs(chest.list()) do
        if item.name == nameSapling then
            print(("%d x %s in slot %d"):format(item.count, item.name, slot))
        end
    end
end

function moveDownX()
end

function fell()
end

function deposit()
end

checkChest()
