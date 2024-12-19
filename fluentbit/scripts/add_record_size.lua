function calculate_record_size(record)
    local size = 0

    local function calculate_size(value)
        if type(value) == "string" then
            -- string in bytes (considers the encoding)
            return #value 
        elseif type(value) == "number" then
            return 8
        elseif type(value) == "boolean" then
            return 1
        elseif type(value) == "table" then
            return calculate_record_size(value)
        else
            -- ignore other types
            return 0
        end
    end

    for key, value in pairs(record) do
        size = size + calculate_size(key) + calculate_size(value)
    end

    return size
end

function add_log_size(tag, timestamp, record)
    record["log_record_bytes"] = calculate_record_size(record)
    return 1, timestamp, record
end
