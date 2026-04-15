local leap_year = function(number)
    if (number % 4) == 0 then
        if (number % 100) == 0 and (number % 400) ~= 0 then
            return false
        else
            return true
        end
    else
        return false
    end
end

return leap_year
