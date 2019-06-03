local function vsver()
    return string.match(_ACTION or "", "vs(%d*)") or 0
end

return function(cfg)
	return (vsver() >= 2015 and cfg.system == premake.LINUX)
end
