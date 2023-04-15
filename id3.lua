local M = {}

local function unpad(str)
	return (str:gsub('[%s%z]+$', ''))
end

--- Read ID3 tags from MP3 file.
-- @param file Either string (filename) or file opened by io.open()
-- @return Table containing the following info: 
function M.readtags(file)
	if type(file) == 'string' then
		file = assert(io.open(file, 'rb'))
	elseif type(file) ~= 'userdata' then
		error('Expecting file or filename as #1, not '..type(file), 2)
	end

	local position = file:seek()
	
	local function readStr(len)
		local str = assert(file:read(len), 'Could not read '..len..'-byte string.')
		return unpad(str)
	end
	
	local function readByte()
		local byte = assert(file:read(1), 'Could not read byte.')
		return string.byte(byte)
	end
	
	-- TODO: try ID3v2 first
	
	-- try ID3v1
	file:seek('end', -128)
	local header = file:read(3)
	if header == "TAG" then
		local info = {}
		info.title = readStr(30)
		info.artist = readStr(30)
		info.album = readStr(30)
		info.year = readStr(4)
		info.comment = readStr(28)
		local zero = readByte()
		local track = readByte()
		local genre = readByte()
		if zero == 0 then
			info.track = track
			info.genre = genre
		else
			info.comment = unpad(info.comment .. string.char(zero, track, genre))
		end
		-- TODO: extended ID3v1 header
		
		file:seek('set', position)
		return info
	end
end

if not ... then
	-- debug if not called by 'require' as module
	require 'pl.pretty'.dump(M.readtags('song.mp3'))
else
	return M
end