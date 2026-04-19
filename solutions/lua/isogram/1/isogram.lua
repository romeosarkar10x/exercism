return function(s)
    local map = {}

    for i = 1, #s do
        local char = s:sub(i, i):lower()

        if map[char] ~= nil and char ~= " " and char ~= "-" then
            return false
        end

        map[char] = 1
    end

    return true
end
