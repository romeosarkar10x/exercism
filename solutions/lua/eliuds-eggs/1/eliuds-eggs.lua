local EliudsEggs = {}

function EliudsEggs.egg_count(number)
    local count = 0

    while number ~= 0 do
        local remainder = number % 2
        number = number // 2
        
        if remainder == 1 then
            count = count + 1
        end
    end

    return count
end

return EliudsEggs
