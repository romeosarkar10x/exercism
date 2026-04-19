local gigasecond = {}

function gigasecond.anniversary(any_date)
    local date <const> = any_date + 1000000000
    return os.date('!%x', date)
end

return gigasecond


