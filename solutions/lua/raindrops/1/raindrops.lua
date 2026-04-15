return function(n)
    local s = ""

    if n % 3 == 0 then
        s = s .. "Pling"
    end

    if n % 5 == 0 then
        s = s .. "Plang"
    end

    if n % 7 == 0 then
        s = s .. "Plong"
    end

    if n % 3 ~= 0 and n % 5 ~= 0 and n % 7 ~= 0 then
        return tostring(n)
    else
        return s
    end
end
