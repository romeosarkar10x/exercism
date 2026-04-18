local Darts = {}

function Darts.score(x, y)
    local squared_distance_from_center = x * x + y * y 
    
    if squared_distance_from_center > 100 then
        return 0
    end

    if squared_distance_from_center > 25 then
        return 1
    end

    if squared_distance_from_center > 1 then
        return 5
    end

    return 10
end

return Darts
