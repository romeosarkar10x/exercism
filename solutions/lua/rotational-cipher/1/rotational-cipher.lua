function find_character_offset(value)
    if 65 <= value and value <= 90 then
        return 65
    end

    return 97
end

return {
    rotate = function(input, key)
        local rotated = ""

        for i = 1, #input do
            local value = (string.byte(input, i))

            if (65 <= value and value <= 90) or (97 <= value and value <= 122) then
                local offset = find_character_offset(value)
                local rotated_value = (value - offset + key) % 26 + offset

                rotated = rotated .. string.char(rotated_value)
            else
                rotated = rotated .. input:sub(i, i)
            end
            
        end

        return rotated
    end
}
