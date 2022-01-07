--ACS Operation Sandstorm

local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local walkSpeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
local jumpPower = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower

local win = DiscordLib:Window("Infinite Dreams")

local serv = win:Server("ACS Operation Sandstorm", "")

local bypass = serv:Channel("Bypasses")

bypass:Label("Click them all in order to be secure.")

bypass:Button("Bypass Client-Side Kicks", function()
	local gmt = getrawmetatable(game)
	setreadonly(gmt, false)
	local namecall = gmt.__namecall

	gmt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		local args = {...}

		if method == "Kick" then
			return nil
		end
		return namecall(self, table.unpack(args))
	end)

	setreadonly(gmt, true)

	DiscordLib:Notification("Done!", "Edited metatables!", "Nice!")
end)

bypass:Button("Bypass Walk Speed", function()
	local gmt = getrawmetatable(game)
	setreadonly(gmt, false)

	local index = gmt.__index

	gmt.__index = newcclosure(function(self, b)
		if b == "WalkSpeed" then
			return walkSpeed
		end
		return index(self, b)
	end)

	setreadonly(gmt, true)

	DiscordLib:Notification("Done!", "Edited metatables!", "Nice!")
end)

bypass:Button("Bypass Jump Power", function()
	local gmt = getrawmetatable(game)
	setreadonly(gmt, false)

	local index = gmt.__index

	gmt.__index = newcclosure(function(self, b)
		if b == "JumpPower" then
			return jumpPower
		end
		return index(self, b)
	end)

	setreadonly(gmt, true)

	DiscordLib:Notification("Done!", "Edited metatables!", "Nice!")
end)

bypass:Button("Disable Anti-Cheat Remote", function()
	local gmt = getrawmetatable(game)
	setreadonly(gmt, false)

	local namecall = gmt.__namecall

	gmt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		local args = {...}

		if method == "FireServer" and tostring(self) == "ExploitBan" then
			return nil
		end
		return namecall(self, table.unpack(args))
	end)
	setreadonly(gmt, true)

	DiscordLib:Notification("Done!", "Killed the remote...", "Oh wow.")
end)

local cheat = serv:Channel("Scripts")

cheat:Button("Manual Aimbot ESP", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0000011/Manual-Aimbot/main/Manual%20Aimbot.lua"))()
	DiscordLib:Notification("Done!", "Nice script!", "Why yes thank you!")
end)

cheat:Button("OwlHub", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
	DiscordLib:Notification("Done!", "OWL", "OWL")
end)

cheat:Seperator()

cheat:Label("I'd suggest Infinite Yield's ESP")

cheat:Seperator()

cheat:Button("Infinite Yield", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	DiscordLib:Notification("Done!", "Epic", "What")
end)

local human = serv:Channel("Humanoid Stuff")

local walkspeed = human:Slider("WalkSpeed", 0, 300, walkSpeed, function(t)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

human:Button("Change to default", function()
	walkspeed:Change(walkSpeed)
end)

human:Seperator()

local jumppower = human:Slider("JumpPower", 0, 300, jumpPower, function(t)
	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = t
end)

human:Button("Change to default", function()
	jumppower:Change(jumpPower)
end)

local useful = serv:Channel("Useful Stuff")

useful:Button("Alt + Click Delete", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0000011/Alt-Click-Delete/main/Alt%20Delete.lua"))()
	DiscordLib:Notification("Done!", "Did not edit metatables!", "Wow, Nice!")
end)

useful:Button("Ctrl + Click Teleport", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0000011/Ctrl-Click-Teleport/main/Ctrl%20Click%20Teleport.lua"))()
	DiscordLib:Notification("Done!", "Yes successfully executed", "Ok!")
end)

useful:Button("Right Alt Toggle Infinite Jump", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0000011/Toggle-Infinite-Jump/main/Toggle%20Infinite%20Jump.lua"))()
	DiscordLib:Notification("Done!", "Epic!", "I know!")
end)

useful:Button("FilterShark (Remote Spy)", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0000011/FilterShark/main/FilterShark.lua"))()
	DiscordLib:Notification("Done!", "Spy moment", "...")
end)

useful:Button("Infinite Yield", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	DiscordLib:Notification("Done!", "Yea success", "I can see!")
end)