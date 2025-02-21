function decompile(modulepath)
    local start_time = tick()
    print("")
    
    local modulescript = modulepath

    if not modulescript:IsA("ModuleScript") then
        error("this decompiler only works on ModuleScript not other userdata")
    end

    local module = require(modulescript)
    print("*** DECOMPILED WITH https://github.com/speedstarkawaii/decompile-modulescript ***")
    print("*** DECOMPILE START: ***")
    if type(module) == "table" then
        for key, value in pairs(module) do
            warn("KEY ->", key, "VALUE ->", value)
        end
    else
        error("ModuleScript provided is invalid or does not contain anything!")
    end

    print("")
    print("*** DECOMPILE ENDED ***")
    local end_time = tick()
    local time_taken = end_time - start_time

    print("*** DECOMPILED IN " .. time_taken .. " SECONDS ***")
    print("******************************************************")
end
