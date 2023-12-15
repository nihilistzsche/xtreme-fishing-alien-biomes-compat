for _, fish in pairs(data.raw.fish) do
    local autoplace = fish.autoplace
    if autoplace then
        local t_r = autoplace.tile_restriction
        if t_r then
            local new_t_r = {}
            for _, t in ipairs(t_r) do
                if t:sub(-6) ~= "-green" then
                    table.insert(new_t_r, t)
                end
            end
            autoplace.tile_restriction = new_t_r
        end
    end
end

