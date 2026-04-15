-- function split_string(str)
--     local parts = {}
--     local part = ""
-- 
--     for i = 1, #str do
--         local c = str:sub(i, i)
--         if c == "_" then
--             parts[#parts + 1] = part
--             part = ""
--         else
--             part = part .. c
--         end
--     end
-- 
--     return parts
-- end

-- for i, v in ipairs(split_string("a_bc_d_efgh_ijk_l_m_n")) do
--     print(i .. " " .. v)
-- end

function min(a, b)
    if a < b then
        return a
    else
        return b
    end
end

return {
    value = function(colors)
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

        -- print(colors)
        local result = ""
        -- local colors_split = split_string(colors)

        for i = 1, min(2, #colors) do
            result = result .. color_map[colors[i]]
        end

        return tonumber(result)
    end
}
