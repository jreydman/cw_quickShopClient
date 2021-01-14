local component = require("component")
local AdapterHelper = {}

function StarstWith(self,str)
	if self==nil then return false end
	return self:find('^' .. str) ~=nil
end

--find in all connected components
function AdapterHelper.GetByIdStart(Id)
	local c = component.list()
	for i,v in c do
	local str = tostring(i)
		if StarstWith(str, Id) then
			return component.proxy(str)
		end
	end
end

return AdapterHelper
