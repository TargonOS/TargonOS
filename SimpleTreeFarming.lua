
local movedY = 0
local Distance = 5

function _entry()
    for i=0, Distance do
        turtle.forward()
    end
end

function inspectInfront()
    success, data = turtle.inspect()
    if !success then
        return 0
    
    print(textutils.serialise(data))
end

function moveDownX()
end

function fell()
end

function deposit()
end

inspectInfront()