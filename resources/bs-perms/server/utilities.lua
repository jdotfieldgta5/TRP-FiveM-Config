function startsWith(theString, start)
  return string.sub(theString, 1, string.len(start)) == start
end

function highestOfTwo(int1, int2)
  if int1 > int2 then
    return int1
  else
    return int2
  end
end

function getArgsFromString(theText)
  local textArgs = {}

  local spat = [=[^(['"])]=]
  local epat = [=[(['"])$]=]
  local buf
  local quoted

  for str in theText:gmatch("%S+") do
    local squoted = str:match(spat)
    local equoted = str:match(epat)
    local escaped = str:match([=[(\*)['"]$]=])
    if squoted and not quoted and not equoted then
      buf = str
      quoted = squoted
    elseif buf and equoted == quoted and #escaped % 2 == 0 then
      str = buf .. ' ' .. str
      buf = nil
      quoted = nil
    elseif buf then
      buf = buf .. ' ' .. str
    end
    if not buf then
      local textArg = str:gsub(spat,""):gsub(epat,"")
      textArgs[#textArgs + 1] = textArg
    end
  end
  return textArgs
end
