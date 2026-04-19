local Hamming = {}

function Hamming.compute(a, b)
    local len_a, len_b = #a, #b

    if len_a ~= len_b then
        error("strands must be of equal length")
    end
    
    local answer = 0

    for i = 1, len_a do
        if a:sub(i, i) ~= b:sub(i, i) then    
            answer = answer + 1
        end
    end

    return answer
end

return Hamming
