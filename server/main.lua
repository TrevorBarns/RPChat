--PROXIMITY 
 RegisterCommand('me', function(source, args, user)
      local name = GetPlayerName(source)
      TriggerClientEvent("sendProximityMessageMe", -1, source, name, table.concat(args, " "))
  end, false)

  RegisterCommand('ooc', function(source, args, user)
      local name = GetPlayerName(source)
      TriggerClientEvent("sendProximityMessageOOC", -1, source, name, table.concat(args, " "))
  end, false)

--SERVERWIDE
   RegisterCommand('gme', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, " ^5 Global ^3 > ^0" .. GetPlayerName(source) .." ^1(#".. source ..")^0", {30, 144, 255}, table.concat(args, " "))
  end, false)
  
   RegisterCommand('gooc', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, " ^5 G-OOC ^3 > ^0" .. GetPlayerName(source) .. " ^1(#" .. source .. ")^0", {30, 144, 255}, table.concat(args, " "))
  end, false)
  
  RegisterCommand('911cb', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, " ^4 911 | Call Back (#" .. source .. ")^0", {30, 144, 255}, table.concat(args, " "))
end, false)

  RegisterCommand('911r', function(source, args, user)
	TriggerClientEvent('chatMessage', -1, " ^4^* 911 | Operator (#" .. source .. ")^0", {30, 144, 255}, "Emergency personnel are enroute")
end, false)

	RegisterCommand('twt', function(source, args, user)
	local header = "(^4@".. GetPlayerName(source) .."^0)"
	local message = table.concat(args, " ")
	TriggerClientEvent("sendTwt", -1, header, message)
  	--TriggerClientEvent('chatMessage', -1, "^0[^4Twitter^0] (^4@" .. GetPlayerName(source) .. "^0)", {30, 144, 255}, table.concat(args, " "))
  end, false)
  
   RegisterCommand('twtas', function(source, args, user)
	local header = "(^4@".. table.remove(args, 1) .."^0)"
	local message = table.concat(args, " ")
	local meta = GetPlayerName(source).. "(#" ..source.. ")"
	print(meta .. ": " .. header .." ".. message) 
	TriggerClientEvent("sendTwtas", -1, meta, header, message)
  end, false)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
