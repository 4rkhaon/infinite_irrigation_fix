function Pipe:isValid(square, north)
if not square:isFree(false) then
	return false
	end

	local isoPipe = nil
	if WaterPipe and WaterPipe.findPipeObject then
		isoPipe = WaterPipe.findPipeObject(square)
		else
			if square:getObjects() then
				for i = 0, square:getObjects():size() - 1 do
					local object = square:getObjects():get(i)
					if object and object:getName() == "WaterPipe" then
						isoPipe = object
						break
					end
				end
			end
		end

		if isoPipe then
			return false
		end

		return true
end
