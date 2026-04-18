local ArmstrongNumbers = {}

function calculate_num_of_digits(n)
    if n == 0 then
        return 1
    end

    local count = 0

    while n ~= 0 do
        count = count + 1
        n = n // 10
    end

    return count
end

-- print(calculate_num_of_digits(234))
-- print(calculate_num_of_digits(3))
-- print(calculate_num_of_digits(2483284))

function ArmstrongNumbers.is_armstrong_number(number)
    local n_digits = calculate_num_of_digits(number)
    
    local n, sum_of_digits_raised = number, 0

    while n ~= 0 do
        local digit = n % 10
        sum_of_digits_raised = sum_of_digits_raised + (digit ^ n_digits)
        n = n // 10
    end

    return sum_of_digits_raised == number
end

return ArmstrongNumbers
