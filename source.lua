--load gui
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Clicker X Hack",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}


--tabs
local Farm = GUI:Tab{
	Name = "Farm",
	Icon = "rbxassetid://8569322835"
}

--vlues
_G.autoTap = true
_G.autoRebirth = true

--funcations
function autoTap()
 while _G.autoTap == true do
	 game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
	 wait(.0000000000000001)
 end
	
end
function autoRebirth()
 while _G.autoRebirth == true do
	 game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(1)
	 wait(0.5)
 end
	
end


--toggles 
Farm:Toggle{
	Name = "Auto Tap",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
	 _G.autoTap = state 
	 autoTap()
	end
}
Farm:Toggle{
	Name = "Auto Rebirth",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
	 _G.autoRebirth = state 
	 autoRebirth()
	end
}
