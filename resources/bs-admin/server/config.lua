function loadConfig()
  if IsDuplicityVersion and IsDuplicityVersion() then
    return json.decode(LoadResourceFile('bs-admin', 'config.json'))
  end

  local path = 'resources/bs-admin/config.json'
  local file = io.open(path)
  local content = ''
  while true do
    local line = file.read()
    if not line then
      break
    end
    content = content .. line
  end
  file:close()
  return json.decode(content)
end
