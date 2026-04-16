function calc(firstdigit, seconddigit, exp)
    return math.tointeger((firstdigit * 10 + seconddigit) * (10 ^ exp))
end

return {
    label = function(c1, c2, c3)
        local color_map = {
            black = 0,
            brown = 1,
            red = 2,
            orange = 3,
            yellow = 4,
            green = 5,
            blue = 6,
            violet = 7,
            grey = 8,
            white = 9,
        }

        local n1, n2, n3 = color_map[c1], color_map[c2], color_map[c3]
        local result = calc(n1, n2, n3)

        if result // 1000 == 0 then
            return result, "ohms"
        end

        if result // 1000000 == 0 then
            return result // 1000, "kiloohms"
        end

        if result // 1000000000 == 0 then
            return result // 1000000, "megaohms"
        end

        return result // 1000000000, "gigaohms"
    end
}
