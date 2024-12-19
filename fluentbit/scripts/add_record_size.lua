function calculate_record_size(record)
    local size, stack, i = 0, {record}, 1

    while i > 0 do
        local current = stack[i]
        i = i - 1

        for key, value in pairs(current) do
            -- Add size of key
            if type(key) == "string" then
                size = size + #key
            elseif type(key) == "number" then
                size = size + 8
            elseif type(key) == "boolean" then
                size = size + 1
            end

            -- Add size of value
            if type(value) == "string" then
                size = size + #value
            elseif type(value) == "number" then
                size = size + 8
            elseif type(value) == "boolean" then
                size = size + 1
            elseif type(value) == "table" then
                i = i + 1
                stack[i] = value -- Push nested table onto the stack
            end
        end
    end

    return size
end

function add_log_size(tag, timestamp, record)
    record["log_record_bytes"] = calculate_record_size(record)
    return 1, timestamp, record
end
