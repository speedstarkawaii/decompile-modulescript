-- cleaner version
-- repo at https://github.com/speedstarkawaii/decompile-modulescript
-- v3 soon 
-- output cleaner on this one

function decompile(module_path)
	local result = ""

	local module_script = module_path

	if not module_script:IsA("ModuleScript") then
		error("this decompiler only works on ModuleScript not other userdata") -- yea i should just return this at result
	end

	local module = require(module_script)

	result = "-- Decompiled with speed's decompiler\n-- ModuleScript are the only script supported" .. "\n\nreturn {\n"

	if type(module) == "table" then
		for key, value in pairs(module) do
			result = result .. "    " .. key .. " = " .. tostring(value) .. ",\n"
		end
		result = result:sub(1, -3) .. "\n"
		result = result .. "}\n"
	else
		result = "-- Decompiled with speed's decompiler\n-- Is the ModuleScript nil?\n\nreturn {\n}"
	end

	return result
end
