if (not game:IsLoaded()) then game.Loaded:Wait(); end;
info = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId);
if (info.Creator.CreatorType ~= "Group" or info.Creator.CreatorTargetId ~= 5192826 or getgenv().serenium_LOADED) then
	return;
end;
getgenv().serenium_LOADED = true;
repeat task.wait() until game:GetService("Players").LocalPlayer;
workspace.FallenPartsDestroyHeight = -math.huge;
for _, void in pairs(workspace:GetDescendants()) do
	if (void.Name == "VoidCollidePart" and void:IsA("Part")) then
        void.CanTouch = false;
		void:GetPropertyChangedSignal("CanTouch"):Connect(function()
			if (void.CanTouch ~= false) then
				void.CanTouch = false;
			end;
		end);
	end;
end;
workspace:GetPropertyChangedSignal("FallenPartsDestroyHeight"):Connect(function()
	if (workspace.FallenPartsDestroyHeight ~= -math.huge) then
		workspace.FallenPartsDestroyHeight = -math.huge;
	end;
end);
game:GetService("Players").LocalPlayer:WaitForChild("CharacterLoaded");
game:GetService("Players").LocalPlayer:WaitForChild("DataLoadedClient");
game:GetService("Players").LocalPlayer:WaitForChild("DataLoaded");
if not LPH_OBFUSCATED then
    getgenv().LPH_JIT_MAX = function(f) return f end
    getgenv().LPH_JIT = function(f) return f end
    getgenv().LPH_NO_VIRTUALIZE = function(f) return f end
    getgenv().LPH_NO_UPVALUES = function(f) return f end
    getgenv().LPH_CRASH = function() return end
end

local function InitializeSerenium()

local Data = Data;
if not Data then
	Data = {
		InviteToDiscord = false,
		Intro = true,
		KillSayStuff = {
			Normal = {
				"bro, respawn faster, I need more %XP% XP",
				"can someone hvh me?? im guessing nobody can 🤣",
				"你的WiFi是土豆吗, %Died%?",
				"你打游戏好像老奶奶一样",
				"Atleast u died to SERENIUM, %Died%",
				"你是NPC吗, %Died%?",
				"你的技能和样老",
				"fix ur aim %Died%",
				"damn is 😂",
				"听说你用Internet Explorer在玩游戏",
				"お前の反応はカタツムリより遅いぞ",
				"你在玩手机上吗, %Died%?",
				"你刚才是睡着了吗?",
				"🤖 你是一台机器人吗, %Died%?",
				"Internet says ‘how to dodge in combat warriors’",
				"turn off 'get beaten by skids' in cw settings",
				"左, 右, 晚安 :skull:",
				"お前はもう死んでいる",
				"ты был удалён с сервера",
				"איפה הכבוד שלך, %Died%?",
				"あなたはゲームをやめるべきです",
				"your kd is negative btw %Died%",
				"你的存活率比0%还低",
				"parrying 💔💔",
				"Internet says 'how to recover from public humiliation'",

				"get this script at /SERENIUM !",
				"tired of cheaters? become one yourself and combat them! /SERENIUM",

				"Outplayed by SERENIUM.",
			},
			Assist = {
				"你没死于我, 是死于团队合作",
				"split my %XP% XP and %Credits% credits with a random, ty for the donation %Died%",
				"お前は味方にやられた",
				"ты просто статистика",
				"你被团队协作打败了",
				"didnt need an assist to kill u %Died%",
				"谁帮我补刀的? 这次算你赚到",
				"yo %Died%, we both know I didn't need the assist",
			},
			Finish = {
				"你的账号已被暂停, %Died%",
				"bro got sent to the shadow realm by a %Weapon%",
				"%Died%, should’ve dodged, oh wait… too late 💀",
				"yo %Died%, your Roblox career ended faster than a limited item stock",
				"Ты уничтожен",
				"ur name should be ‘free kill’, %Died%",
				"%Died% died so fast that Roblox lagged 💀",
				"お前の敗北は確定していた",
				"お前の人生はチェックメイト",
				"fatality.",
				"bro went out like a YouTube tutorial dummy",
				"bro got cooked, fried, and served",
				"bro’s internet provider officially disowned him",
				"Mustache Man once said: 'The greatest defeat comes when one refuses to accept their fate.'",
				"Napoleon once declared: 'The war is won in the mind before the battlefield.'",
				"Sun Tzu once wrote: 'The battlefield is not just a place, it is a state of mind.'",
				"Genghis Khan once proclaimed: 'A warrior’s life ends when they fail to adapt to the changing tides.'",
				"Einstein once said: 'In the end, only the smart survive.'",
			},
			Glory = {
				"你的死亡动画很美, %Died%",
				"someone clip that dawg, %Died% just got packed",
				"%Died%, wanna see my recoil script? (it's called skill)",
				"yo %Died%, ur gameplay lookin like a speedrun to the death screen",
				"bro's last words: ‘I got this’ 💀",
				"удар был смертельным",
				"ur name should be ‘free kill’, %Died%",
				"%Died% died so fast that Roblox lagged 💀",
				"お前の存在が消えた",
				"я сохранил этот момент",
				"bro thought he was the protagonist, I made sure he wasn't",
				"Google says ‘how to recover from a humiliation kill’",
				"%Died%, that was a fatality, not a kill",
				"bro got deleted so hard, he's gonna respawn in another server",
				"I'm screenshotting this kill for my collection %Died%",
				"你只是我今天的另一个XP点数 ",
				"お前は何だったの？",
				"left right goodnight :skull:",
				"clip that, I need it for my mixtape",
				"bro got an express ticket to spectate mode",
				"100% uninstall speedrun, new record %Died%",
				"bro thought he had a chance, but the script said no",
				"Mustache Man once said: 'Victory is a sweet taste for those who dare to fight without hesitation.'",
				"Sun Tzu once wrote: 'The only true defeat is one suffered without a fight.'",
				"Einstein once said: 'It’s not about how fast you run, but how you use your momentum.'",
				"Genghis Khan once declared: 'A battle is not won by strength alone, but by will and intellect.'",
				"Napoleon said: 'The best way to predict the future is to make it.'",
			},
		},
	};
end;
-- variables
local modules, framework;
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/linoria-fork/refs/heads/main/linoria.lua"))();
local savemanager = loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/savemanager/refs/heads/main/linoria.lua"))();
local thememanager = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/refs/heads/main/addons/ThemeManager.lua"))();
local window = library:CreateWindow({Title = "			 <font color = \"#8400ff\">nil.solutions - discord.gg/serenium</font>   <font color=\"#ff0000\">combat warriors</font>", Center = true, AutoShow = true, TabPadding = 8, MenuFadeTime = 0});
local tabs = {main = window:AddTab('main'), ranged = window:AddTab("ranged"); charactertab = window:AddTab("character"), misc = window:AddTab("misc"), visuals = window:AddTab("visuals"), kill = window:AddTab("kill"), settings = window:AddTab("settings")}; -- tabs

local main = tabs.main:AddLeftGroupbox("main");
local parrysection2 = tabs.main:AddRightGroupbox("auto parry")
local parrysection = tabs.main:AddRightGroupbox("modifications")

local mmisc = tabs.misc:AddLeftGroupbox("main");
local miscauto = tabs.misc:AddLeftGroupbox("auto");
local misc = tabs.misc:AddLeftGroupbox("cosmetic");
local crates = tabs.misc:AddLeftGroupbox("crates");
local misc_tab = tabs.misc:AddRightTabbox();
local auto = tabs.misc:AddRightGroupbox("others")
local charactertab = tabs.charactertab:AddLeftGroupbox("character");
local othertabs = tabs.charactertab:AddLeftGroupbox("others");
local exploit = tabs.charactertab:AddRightGroupbox("exploits");
local exploit1 = tabs.charactertab:AddRightGroupbox("character exploits");
local settings = tabs.settings:AddLeftGroupbox("settings");
local gunmods = tabs.ranged:AddLeftGroupbox("gun mods");

local charactersection = tabs.visuals:AddRightGroupbox("character visuals");
local espsection = tabs.visuals:AddLeftGroupbox("esp");
local kill = tabs.kill:AddLeftGroupbox("attempt kills");

-- others
local whitelist = {};
local viewing, driver, AttachRoot = nil;
local camera = workspace.CurrentCamera;
local boostmultiplier = 2;
local updown = true;
local flying = false;
local keys = {w=false, a=false, s=false, d=false, space=false, ctrl=false, lshift=false};
local runservice = game:GetService("RunService");
local repstorage = game:GetService("ReplicatedStorage");
local userinputservice = cloneref(game:GetService("UserInputService"));
local httpservice = game:GetService("HttpService");
local players = game:GetService("Players");
local localplayer = players.LocalPlayer;
local character = localplayer.Character or localplayer.CharacterAdded:Wait();
local humanoidrootpart = character:WaitForChild("HumanoidRootPart");
local humanoid = character:WaitForChild("Humanoid");
local workspace = game:GetService("Workspace");
function GetPlayerCharacters()
    return workspace:FindFirstChild("PlayerCharacters") or workspace:FindFirstChild("Characters") or workspace;
end;
PlayerCharacters = GetPlayerCharacters();
local ParryingCharacters = {};
library.IgnoreWhileTyping = true;
local spinspeed = 10;
local spineabled = false;
local KADebounce = false;
local OnTp = false;
local Active = true;
local vector3new = Vector3.new;
local cframenew = CFrame.new;
local cframeangles = CFrame.Angles;
local drawingnew = Drawing.new;
local mathrandom = math.random;
local mathsin = math.sin;
local mathcos = math.cos;
local mathfloor = math.floor;
local vector2new = Vector2.new;
local taskspawn = task.spawn;
local Ignored = {};
local Classes = setmetatable({}, {
    __index = function(t, k)
        return Toggles[k] or Options[k];
    end;
});
--getgenv variables
getgenv().antifling = false;
getgenv().infstamina = false;
getgenv().canalwaysjump = false;
getgenv().nnt = false;
getgenv().nut = false;
getgenv().nps = false;
getgenv().nps2 = false;
getgenv().noflash = false;
getgenv().noclipenabled = false;
getgenv().desync = false;
getgenv().velocityenabled = false;
getgenv().velocityspeed = nil;
getgenv().flyenabled = false;
getgenv().nhe = false;
getgenv().ngpe = false;
getgenv().nkb = false;
getgenv().fno = false;
getgenv().spinenabled = false;
getgenv().hideweapon = false;
getgenv().walkspeedenabled = false;
getgenv().nocancel = false;
getgenv().noswim = false;
getgenv().vcenabled = false;
getgenv().fastrespawn = false;
getgenv().loopspawn = false;
getgenv().loopkillall = false;
getgenv().ar = false;
getgenv().killaura = false;
getgenv().autostompshove = false;
getgenv().autoglory = false;
getgenv().antimod = false;
getgenv().BeartrapEnemy = false;
getgenv().AutoAttachC4 = false;
getgenv().AutoDetonateC4 = false;
getgenv().hbe = false;
getgenv().voidenabled = false;
getgenv().showhbe = false;
getgenv().AlwaysHead = false;
getgenv().ragebot = false;
getgenv().fakeswing = false;
getgenv().swingsound = false;
getgenv().autoequip = false;
getgenv().voidonparry = false;
getgenv().ndcd = false;
getgenv().killsay = false;
getgenv().nfd = false;
getgenv().loopkilltarget = false;
getgenv().stick = false;
getgenv().silentAimTarget = nil;
getgenv().tpenemy = false;
getgenv().hbe_part = "Head";
getgenv().hbesize = 1;
getgenv().stompshoverange = 10;
getgenv().glorydelay = 1;
getgenv().gloryrange = 10;
getgenv().jumppower = 50;
getgenv().walkspeed = 16;
getgenv().flyspeed = 16;
getgenv().selecteddevice = "pc";
getgenv().devicespoofer = false;
getgenv().multiplier = 0.15;
getgenv().base = 0;
getgenv().teleport = function(CFrame)
	game:GetService("TweenService"):Create(humanoidrootpart,TweenInfo.new(0),{ CFrame = CFrame }):Play();
end;
local function whitelisted(player)
	if not player then return false; end;
	if table.find(whitelist, player.Name) then
		return true;
	end;
	if Toggles and Toggles.WhitelistFriends and Toggles.WhitelistFriends.Value and getgenv().whitelistfriends then
		return localplayer:IsFriendsWith(player.UserId);
	end;
	return false;
end;
-- void hide
loadstring(game:HttpGet("https://raw.githubusercontent.com/xectray1/serverpos/refs/heads/main/library.lua"))(); -- doing loadstring because it is extremely annoying to escape local register errors
local function targetcframe(cf)
    local basepos = cf.Position;
    local x = basepos.X;
    local y = mathrandom(-1000, 0);
    local z = basepos.Z;
    return cframenew(x, y, z);
end;
serverposition("heartbeat", "voidhidelogic", LPH_JIT_MAX(function(cf)
    if getgenv().voidenabled then
        return targetcframe(cf);
    end;
end), 15);
setrunning("voidhidelogic", true);
runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
    local hum = localplayer.Character and localplayer.Character:FindFirstChild("Humanoid");
    if hum and getgenv().voidenabled then
        hum:ChangeState(Enum.HumanoidStateType.Freefall);
    end;
end));
-- fly
local function connect(newchar)
    character = newchar;
    humanoidrootpart = character:WaitForChild("HumanoidRootPart");
	humanoid = character:WaitForChild("Humanoid");
end;
localplayer.CharacterAdded:Connect(connect);
userinputservice.InputBegan:Connect(function(input, gpe)
    if gpe then return; end;
    local k = input.KeyCode;
    local name = k.Name:lower();
    if keys[name] ~= nil then keys[name] = true; end;
end);
userinputservice.InputEnded:Connect(function(input, gpe)
    if gpe then return; end;
    local n = input.KeyCode.Name:lower();
    if keys[n] ~= nil then keys[n] = false; end;
end);
runservice.Heartbeat:Connect(newcclosure(LPH_JIT_MAX(function(dt)
    if getgenv().flyenabled ~= flying then
        flying = getgenv().flyenabled;
        if flying then
            humanoidrootpart.Anchored = true;
            runservice.RenderStepped:Wait();
            humanoidrootpart.Anchored = false;
            driver = Instance.new("Part");
            driver.Size = vector3new(1,1,1);
            driver.Transparency = 1;
            driver.Anchored = true;
            driver.CanCollide = false;
            driver.Parent = workspace;
            driver.CFrame = humanoidrootpart.CFrame;
        else
            if driver then driver:Destroy(); driver = nil; end;
            local old = humanoidrootpart:FindFirstChildOfClass("BodyVelocity");
            if old then old:Destroy(); end;
            return;
        end;
    end;
    if not flying then return; end;
    if not driver then return; end;
	local AntiCheatHandler = require(game:GetService("ReplicatedStorage").Shared.Source.AntiCheat.AntiCheatHandler);
    local bv = humanoidrootpart:FindFirstChildOfClass("BodyVelocity");
    if not bv then
		bv = AntiCheatHandler.createBodyMover("BodyVelocity");
    	bv.Parent = humanoidrootpart;
    	bv.MaxForce = vector3new(1e9, 1e9, 1e9);
    	bv.Velocity = Vector3.zero;
	end;
	humanoidrootpart.Velocity = Vector3.zero;
    humanoidrootpart.RotVelocity = Vector3.zero;
    local move = Vector3.zero;
    if keys.w then move += camera.CFrame.LookVector; end;
    if keys.s then move -= camera.CFrame.LookVector; end;
    if keys.a then move -= camera.CFrame.RightVector; end;
    if keys.d then move += camera.CFrame.RightVector; end;
    if updown then
        if keys.space then move += Vector3.yAxis; end;
        if keys.ctrl then move -= Vector3.yAxis; end;
    end;
    if move.Magnitude > 0 then move = move.Unit; end;
    local speed = getgenv().flyspeed * (keys.lshift and boostmultiplier or 1);
    driver.CFrame = driver.CFrame + move * speed * dt;
    driver.CFrame = cframenew(driver.Position, driver.Position + camera.CFrame.LookVector);
    bv.Velocity = move * speed;
    humanoidrootpart.CFrame = driver.CFrame;
end)));

-- velocity
runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
    local velocity = humanoidrootpart.AssemblyLinearVelocity;
    if getgenv().velocityenabled and getgenv().velocityspeed then
        local moveDir = humanoid.MoveDirection;
        if moveDir.Magnitude > 0 then
            local horizontal = vector3new(moveDir.X, 0, moveDir.Z).Unit;
            humanoidrootpart.AssemblyLinearVelocity = vector3new(horizontal.X * getgenv().velocityspeed, velocity.Y, horizontal.Z * getgenv().velocityspeed);
        else
            humanoidrootpart.AssemblyLinearVelocity = vector3new(0, velocity.Y, 0);
        end;
    end;
end));
-- desync
local active = true;
taskspawn(LPH_JIT_MAX(function()
	while true do
		runservice.Heartbeat:Wait()
		if not active then
			runservice.Heartbeat:Wait();
			break;
		end;
		if not getgenv().desyncenabled then
			runservice.Heartbeat:Wait();
			continue;
		end;
		if not character then
			runservice.Heartbeat:Wait();
			continue;
		end;
		if not humanoidrootpart then
			runservice.Heartbeat:Wait();
			continue;
		end;
		local vel, movel = nil, 0.1;
		vel = humanoidrootpart.Velocity;
		humanoidrootpart.Velocity = vector3new(mathrandom(-1500, 1500), mathrandom(-300, 300), mathrandom(-1500, 1500));
		runservice.RenderStepped:Wait();
		if character and character.Parent and humanoidrootpart and humanoidrootpart.Parent then
			humanoidrootpart.Velocity = vel;
		end;
		runservice.Stepped:Wait();
		if character and character.Parent and humanoidrootpart and humanoidrootpart.Parent then
			humanoidrootpart.Velocity = vel + vector3new(0, movel, 0);
			movel = movel * -1;
		end;
	end;
end));
-- noclip (cached parts)
local noclipParts = {};
local function cacheNoclipParts(char)
    noclipParts = {};
    if not char then return end;
    for _, v in ipairs(char:GetDescendants()) do
        if v:IsA("BasePart") then
            table.insert(noclipParts, v);
        end;
    end;
    char.DescendantAdded:Connect(function(v)
        if v:IsA("BasePart") then
            table.insert(noclipParts, v);
        end;
    end);
end;
cacheNoclipParts(character);
localplayer.CharacterAdded:Connect(cacheNoclipParts);
runservice.Stepped:Connect(LPH_JIT_MAX(function()
    if not getgenv().noclipenabled then return; end;
    for i = #noclipParts, 1, -1 do
        local v = noclipParts[i];
        if not v or not v.Parent then
            table.remove(noclipParts, i);
        else
            v.CanCollide = false;
        end;
    end;
end));

local HitDetectionImpl = {
    Sounds = {
        OSU = "rbxassetid://7149255551",
        Neverlose = "rbxassetid://8679627751",
        Bameware = "rbxassetid://3124331820",
        skeet = "rbxassetid://5633695679",
        Rust = "rbxassetid://5043539486",
        ["Lazer Beam"] = "rbxassetid://130791043",
        ["Bow Hit"] = "rbxassetid://1053296915",
        ["TF2 Hitsound"] = "rbxassetid://2868331684",
        ["TF2 Critical"] = "rbxassetid://296102734"
    },
    Labels = {},
    YOffset = 0,
    LastCloneTime = 0
};
HitDetectionImpl.CreateLog = LPH_JIT_MAX(function(text)
    local screen = workspace.CurrentCamera.ViewportSize
    local prefixNil = "nil"
    local prefixDot = "."
    local prefixSolutions = "solutions"
    local fullPrefix = "nil.solutions"
    local restOfText = text:sub(#fullPrefix + 1)
    
    local nilColor = Color3.fromRGB(148, 131, 255)
    local textSize = 19
    local textFont = 2

    local labelNil = drawingnew("Text")
    labelNil.Text = prefixNil
    labelNil.Size = textSize
    labelNil.Font = textFont
    labelNil.Outline = true
    labelNil.Color = nilColor
    labelNil.Visible = true
    labelNil.Transparency = 0
    labelNil.ZIndex = 15
    
    local labelDot = drawingnew("Text")
    labelDot.Text = prefixDot
    labelDot.Size = textSize
    labelDot.Font = textFont
    labelDot.Outline = true
    labelDot.Color = Color3.new(1, 1, 1)
    labelDot.Visible = true
    labelDot.Transparency = 0
    labelDot.ZIndex = 15

    local labelSolutions = drawingnew("Text")
    labelSolutions.Text = prefixSolutions
    labelSolutions.Size = textSize
    labelSolutions.Font = textFont
    labelSolutions.Outline = true
    labelSolutions.Color = Color3.new(1, 1, 1)
    labelSolutions.Visible = true
    labelSolutions.Transparency = 0
    labelSolutions.ZIndex = 15

    local labelRest = drawingnew("Text")
    labelRest.Text = restOfText
    labelRest.Size = textSize
    labelRest.Font = textFont
    labelRest.Outline = true
    labelRest.Color = Color3.new(1, 1, 1)
    labelRest.Visible = true
    labelRest.Transparency = 0
    labelRest.ZIndex = 15
    
    local targetX = screen.X / 2
    local finalY = screen.Y - 180 - HitDetectionImpl.YOffset
    local totalWidth = labelNil.TextBounds.X + labelDot.TextBounds.X + labelSolutions.TextBounds.X + labelRest.TextBounds.X
    local offsetFromCenter = totalWidth / 2
    
    local function setPos(currentX)
        labelNil.Position = vector2new(currentX - offsetFromCenter, finalY)
        labelDot.Position = vector2new(labelNil.Position.X + labelNil.TextBounds.X, finalY)
        labelSolutions.Position = vector2new(labelDot.Position.X + labelDot.TextBounds.X, finalY)
        labelRest.Position = vector2new(labelSolutions.Position.X + labelSolutions.TextBounds.X, finalY)
    end
    
    -- Initial Pos (shifted left)
    setPos(targetX - 30)

    table.insert(HitDetectionImpl.Labels, {labelNil, labelDot, labelSolutions, labelRest})
    HitDetectionImpl.YOffset = HitDetectionImpl.YOffset + 22

    taskspawn(function()
        -- Slide In + Fade In
        local slideSteps = 10
        for i = 1, slideSteps do
            local progress = i / slideSteps
            local currentX = (targetX - 30) + (30 * progress)
            labelNil.Transparency = progress
            labelDot.Transparency = progress
            labelSolutions.Transparency = progress
            labelRest.Transparency = progress
            setPos(currentX)
            task.wait(0.015)
        end
        
        task.wait(1.6) -- Disappear after 1.6 seconds

        -- Fade Out
        for i = 1, 10 do
            local trans = 1 - (i / 10)
            labelNil.Transparency = trans
            labelDot.Transparency = trans
            labelSolutions.Transparency = trans
            labelRest.Transparency = trans
            task.wait(0.04)
        end
        labelNil.Visible = false
        labelDot.Visible = false
        labelSolutions.Visible = false
        labelRest.Visible = false
        labelNil:Remove()
        labelDot:Remove()
        labelSolutions:Remove()
        labelRest:Remove()
        
        for i, v in ipairs(HitDetectionImpl.Labels) do
            if v[1] == labelNil then
                table.remove(HitDetectionImpl.Labels, i)
                break
            end
        end
        if #HitDetectionImpl.Labels == 0 then
            HitDetectionImpl.YOffset = 0
        end
        if HitDetectionImpl.YOffset > 300 then -- Limit upward stacking to prevent going off-screen
            HitDetectionImpl.YOffset = 0
        end
    end);
end);
HitDetectionImpl.PlaySound = function(soundName, volume)
    if soundName == "None" or not HitDetectionImpl.Sounds[soundName] then return end;
    local sound = Instance.new("Sound");
    sound.SoundId = HitDetectionImpl.Sounds[soundName];
    sound.Volume = volume or 1;
    sound.Parent = game:GetService("SoundService");
    sound:Play();
    sound.Ended:Connect(function() sound:Destroy(); end);
end;
HitDetectionImpl.CreateEffect = LPH_JIT_MAX(function(effectType, part, color, damage)
    if not part or not part.Position or part.Name == "FakeHitbox" then return end
    local mainColor = color or Color3.new(1, 1, 1)

    if effectType == "Clone (Forcefield)" or effectType == "Clone (Neon)" then 
        if tick() - HitDetectionImpl.LastCloneTime < 0.5 then return end
        HitDetectionImpl.LastCloneTime = tick()
        
        local targetChar = part:FindFirstAncestorOfClass("Model")
        if not targetChar or not targetChar:FindFirstChild("Humanoid") then return end
        
        targetChar.Archivable = true
        local clone = targetChar:Clone()
        clone.Name = "SereniumClone"
        
        -- CRITICAL: Destroy Humanoid COMPLETELY to prevent character collision mechanics
        local cloneHumanoid = clone:FindFirstChildOfClass("Humanoid")
        if cloneHumanoid then
            cloneHumanoid:Destroy()
        end
        
        -- Destroy HumanoidRootPart completely
        local hrp = clone:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp:Destroy()
        end
        
        local isNeon = effectType == "Clone (Neon)"
        
        -- Helper function to make a part non-collidable
        local function makeNonCollidable(v)
            if v:IsA("BasePart") then
                v.CanCollide = false
                v.CanTouch = false
                v.CanQuery = false
                v.Anchored = true
                v.Massless = true
                v.Velocity = Vector3.zero
                v.RotVelocity = Vector3.zero
                v.Material = isNeon and Enum.Material.Neon or Enum.Material.ForceField
                v.Color = mainColor
                if v:IsA("MeshPart") then
                    v.TextureID = ""
                end
            end
        end
        
        -- Process ALL descendants
        for _, v in pairs(clone:GetDescendants()) do
            if v:IsA("BasePart") then
                makeNonCollidable(v)
            elseif v:IsA("SpecialMesh") then
                v.TextureId = ""
            elseif v:IsA("Decal") or v:IsA("Texture") then
                v:Destroy()
            elseif v:IsA("Clothing") or v:IsA("ShirtGraphic") then
                v:Destroy()
            elseif v:IsA("JointInstance") or v:IsA("TouchTransmitter") then
                v:Destroy()
            elseif v:IsA("Accessory") or v:IsA("Tool") then
                if isNeon then
                    v:Destroy()
                else
                    for _, accessoryPart in pairs(v:GetDescendants()) do
                        makeNonCollidable(accessoryPart)
                    end
                end
            elseif v:IsA("LocalScript") or v:IsA("Script") or v:IsA("Animator") then
                v:Destroy()
            end
        end
        
        -- Copy CFrames from original character
        for _, v in pairs(targetChar:GetDescendants()) do
            if v:IsA("BasePart") then
                local clonePart = clone:FindFirstChild(v.Name, true)
                if clonePart and clonePart:IsA("BasePart") then
                    clonePart.CFrame = v.CFrame
                end
            end
        end
        
        -- Offset clone slightly
        local lpChar = localplayer.Character
        if lpChar and lpChar:FindFirstChild("HumanoidRootPart") then
            local root = lpChar.HumanoidRootPart
            clone:PivotTo(targetChar:GetPivot() + vector3new(root.CFrame.LookVector.X * 1.5, 0, root.CFrame.LookVector.Z * 1.5))
        end
        
        -- Catch any parts added AFTER we process (shouldn't happen but just in case)
        clone.DescendantAdded:Connect(function(v)
            makeNonCollidable(v)
        end)
        
        -- Parent to workspace (all parts already configured)
        clone.Parent = workspace.Terrain
        
        targetChar.Archivable = false
        game:GetService("Debris"):AddItem(clone, 2)

    elseif effectType == "Pulse" then
        local attachment = Instance.new("Attachment")
        attachment.Parent = part
        attachment.WorldPosition = part.Position
        
        local function createEmitter(name, orientation)
            local p = Instance.new("ParticleEmitter")
            p.Name = name
            p.LightEmission = 3
            p.Transparency = NumberSequence.new(0)
            p.Color = ColorSequence.new(mainColor)
            p.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 6, 1.2)})
            p.Rotation = NumberRange.new(0)
            p.RotSpeed = NumberRange.new(0)
            p.Enabled = false
            p.Rate = 2
            p.Lifetime = NumberRange.new(0.25)
            p.Speed = NumberRange.new(0.1)
            p.Squash = NumberSequence.new(0)
            p.ZOffset = 1
            p.Texture = "rbxassetid://2916153928"
            p.Orientation = orientation
            p.Shape = Enum.ParticleEmitterShape.Box
            p.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
            p.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
            p.Parent = attachment
            return p
        end
        
        local p1 = createEmitter("Particle1", Enum.ParticleOrientation.VelocityPerpendicular)
        local p2 = createEmitter("Particle2", Enum.ParticleOrientation.FacingCamera)
        
        p1:Emit(1)
        p2:Emit(1)
        
        game:GetService("Debris"):AddItem(attachment, 1)

    elseif effectType == "Impact" then 
        local pulsePart = Instance.new("Part")
        pulsePart.Name = "HitEffect_Impact"
        pulsePart.Shape = Enum.PartType.Ball
        pulsePart.Size = vector3new(1, 1, 1)
        pulsePart.Position = part.Position
        pulsePart.Anchored = true
        pulsePart.CanCollide = false
        pulsePart.CanTouch = false
        pulsePart.CanQuery = false
        pulsePart.Material = Enum.Material.Neon
        pulsePart.Color = mainColor
        pulsePart.Transparency = 0.5
        pulsePart.Parent = workspace.Terrain -- Parent after anchored=true
        local tween = game:GetService("TweenService"):Create(pulsePart, TweenInfo.new(0.4), {Transparency = 1, Size = vector3new(6, 6, 6)})
        tween:Play()
        tween.Completed:Connect(function() pulsePart:Destroy() end)
    elseif effectType == "Fortnite" then
        local dmgValue = damage or 0
        local dmgText = tostring(mathfloor(dmgValue))
        local targetPart = part
        if not targetPart or not targetPart.Parent then return end
        
        -- Smart Part Resolver for Drawing
        if targetPart.Name == "FakeHitbox" then
            targetPart = targetPart.Parent:FindFirstChild("Head") or targetPart.Parent:FindFirstChild("Torso") or targetPart.Parent:FindFirstChild("HumanoidRootPart") or targetPart
        end

        local startWorldPos = targetPart.Position + vector3new(mathrandom(-10, 10) / 10, 2, mathrandom(-10, 10) / 10)
        local floatOffset = vector3new(mathrandom(-5, 5) / 10, 3, 0)
        
        -- Dual-label stacking for "Super Bold" look without being messy
        local function createLabel()
            local l = drawingnew("Text")
            l.Text = dmgText
            l.Color = color
            l.Center = true
            l.Outline = true
            l.OutlineColor = Color3.new(0, 0, 0)
            l.Font = 2 -- Bold-ish Monospace
            l.Visible = false
            l.Transparency = 1
            l.ZIndex = 20
            return l
        end
        
        local label1 = createLabel()
        local label2 = createLabel()

        taskspawn(function()
            local startTime = tick()
            local duration = 0.8
            
            while tick() - startTime < duration do
                local elapsed = tick() - startTime
                
                -- Floating animation
                local currentWorldPos = startWorldPos + (floatOffset * math.sin((elapsed / duration) * (math.pi / 2)))
                local screenPos, onScreen = camera:WorldToViewportPoint(currentWorldPos)
                
                if onScreen then
                    label1.Visible = true
                    label2.Visible = true
                    label1.Position = vector2new(screenPos.X, screenPos.Y)
                    label2.Position = vector2new(screenPos.X + 0.5, screenPos.Y + 0.5) -- Tiny offset for boldness
                    
                    -- Dynamic Size for Sharpness
                    local size = 45
                    local trans = 1
                    if elapsed < 0.1 then 
                        size = 25 + (25 * (elapsed / 0.1)) -- Pop to 50
                        trans = elapsed / 0.1
                    elseif elapsed < 0.2 then
                        size = 50 - (5 * ((elapsed - 0.1) / 0.1)) -- Settle at 45
                    elseif elapsed > 0.5 then
                        local fadeProgress = (elapsed - 0.5) / 0.3
                        trans = 1 - fadeProgress
                        size = 45 - (10 * fadeProgress)
                    end
                    
                    label1.Size = size
                    label2.Size = size
                    label1.Transparency = trans
                    label2.Transparency = trans
                else
                    label1.Visible = false
                    label2.Visible = false
                end
                
                runservice.RenderStepped:Wait()
            end
            label1.Visible = false
            label2.Visible = false
            label1:Remove()
            label2:Remove()
        end);
    end;
end);
local LastHits = {}
local OnHit = LPH_JIT_MAX(function(targetPlayer, hitPart, damage, hitType)
    if not targetPlayer then return end
    if not Toggles or not Toggles.HitDetectionEnabled or not Toggles.HitDetectionEnabled.Value then
        return
    end
    local wantedType = Options.HitDetectionType and Options.HitDetectionType.Value or "Both"
    if wantedType ~= "Both" and hitType and wantedType ~= hitType then
        return
    end
    if hitPart and hitPart.Name == "FakeHitbox" and hitPart.Parent then
        hitPart =
            hitPart.Parent:FindFirstChild("Head")
            or hitPart.Parent:FindFirstChild("Torso")
    end
    local now = tick()
    local hitId = tostring(targetPlayer.UserId)
    if LastHits[hitId] and now - LastHits[hitId] < 0.12 then
        return
    end
    LastHits[hitId] = now
    local function triggerEffects()
        if Options.HitSound and Options.HitSound.Value ~= "None" then
            local volume = Options.HitSoundVolume and Options.HitSoundVolume.Value or 1
            HitDetectionImpl.PlaySound(Options.HitSound.Value, volume)
        end

        if Options.HitEffects and Options.HitEffects.Value and hitPart then
            local color = Options.HitEffectColor and Options.HitEffectColor.Value or Color3.new(1,1,1)

            for effectType, enabled in pairs(Options.HitEffects.Value) do
                if enabled then
                    task.spawn(function()
                        if hitPart and hitPart.Parent then
                            HitDetectionImpl.CreateEffect(effectType, hitPart, color, damage)
                        end
                    end)
                end
            end
        end
        if Toggles.HitLogs and Toggles.HitLogs.Value then
            local partName = hitPart and hitPart.Name or "Unknown"
            local headshot = partName == "Head"
            local displayDamage = damage or 0

            local dmgText = string.format("%.0f", displayDamage)

            HitDetectionImpl.CreateLog(
                "nil.solutions | hit "
                .. targetPlayer.Name
                .. " for "
                .. dmgText
                .. " damage ("
                .. (headshot and "head" or partName)
                .. ")"
            )
        end
    end
    triggerEffects()
end)

-- game exploit setup
modules = { Name = {}, Id = {} };
local utilityids = {};
local weaponids = {};
setthreadidentity(2);
for _, child in pairs(repstorage:GetDescendants()) do
	if child:IsA("ModuleScript") then
		local success, module = pcall(require, child);
		if success then
			modules.Name[child.Name] = module;
		end;
	end;
end;
setthreadidentity(8);
for i, v in modules.Name["UtilityIds"] do
	utilityids[i:lower()] = v
end
for i, v in modules.Name["WeaponIds"] do
	weaponids[i:lower()] = v
end
local network = modules.Name["Network"];
local eventhandler;
local remotes;
if eventhandler then
	remotes = getupvalue(eventhandler, 1);
end;
framework = {};
local hooks = {};
local modify = {};
local signal = modules.Name["Signal"];
local onfireserver = network.FireServer;
handle = LPH_JIT_MAX(function(_, Name, ...)
	local Args = { ... };
	if modify[Name] then
		local shouldhook = modify[Name].Check(Name, unpack(Args));
		if shouldhook then
			if typeof(shouldhook) == "table" then
				table.foreach(shouldhook, function(i, v)
					Args[i] = v;
				end);
			else
				if shouldhook == "Blocked" then
					return;
				end;
				for i, v in modify[Name].Args do
					Args[i] = v;
				end;
			end;
		end;
	end;
	if hooks[Name] then
		return pcall(hooks[Name], onfireserver, _, Name, ...);
	end;
	return onfireserver(_, Name, unpack(Args));
end);
network.FireServer = function(_, Name, ...)
	return handle(_, Name, ...);
end;
function framework:addhook(Name, Function)
	hooks[Name] = LPH_JIT_MAX(Function);
end;
function framework:argmodify(Name, ToModify, Check)
	modify[Name] = { Args = { ToModify }, Check = Check }
end
function framework:removehook(Name)
	table.remove(hooks, table.find(hooks, Name));
end;
function framework:removeargmodifier(Name, ToModify)
	table.remove(Modify, table.find(Modify, Name));
end;
function framework:fireserver(Name, ...)
	network:FireServer(Name, ...);
end;
function framework:invokeserver(Name, ...)
	network:InvokeServer(Name, ...);
end;
function framework:hookclient(Table, Name, NewFunction)
	if not remotes then
		return;
	end;
	local ToHook;
	for i, v in pairs(getconnections(remotes[Name].remote.OnClientEvent)) do
		ToHook = v.Function;
		break;
	end;
	local OldHook;
	OldHook = hookfunction(ToHook, LPH_NO_UPVALUES(function(...) return NewFunction(...)end));
	return OldHook;
end;
function framework:getmetadata(ItemName, ItemId)
	local key = ItemName:lower():gsub(" ", ""):gsub("_","");
	local id = weaponids[key] or ItemId;
	if not id then return; end;
	return modules.Name["WeaponMetadata"][id];
end;
function framework:getutility(ItemName, ItemId)
	if not utilityids[ItemName:lower():gsub(" ", "")] then
		return;
	end;
	return ItemName and modules.Name["UtilityMetadata"][utilityids[ItemName:lower():gsub(" ", "")]] or modules.Name["UtilityMetadata"][ItemId];
end;
function framework:GetWeapon(Player)
	local Player = Player or localplayer;
	if not Player then
		return;
	end;
	local Character = Player.Character or Player.CharacterAdded:Wait();
	if not Character then
		return;
	end;
	for i, v in Character:GetChildren() do
		if not v:IsA("Tool") then
			continue;
		end;
		if v:GetAttribute("ItemType") == "weapon" and modules.Name["WeaponMetadata"][v:GetAttribute("ItemId")] and modules.Name["WeaponMetadata"][v:GetAttribute("ItemId")].class:lower():match("melee") then
			return v, modules.Name["MeleeWeaponClient"].getObj(v);
		end;
	end;
	return;
end;
function framework:GetRanged(Player)
	local Player = Player or localplayer;
	if not Player then
		return;
	end;
	local Character = Player.Character or Player.CharacterAdded:Wait();
	if not Character then
		return;
	end;
	for i, v in Character:GetChildren() do
		if not v:IsA("Tool") then
			continue;
		end;
		if v:GetAttribute("ItemType") == "weapon" and modules.Name["WeaponMetadata"][v:GetAttribute("ItemId")] and modules.Name["WeaponMetadata"][v:GetAttribute("ItemId")].class:lower():match("ranged") then
			return v, modules.Name["RangedWeaponClient"].getObj(v);
		end;
	end;
	return;
end;
function framework:GetState()
	return modules.Name["RoduxStore"].store:getState();
end;
function framework:GetSessionData(player)
	return modules.Name["DataHandler"].getSessionDataRoduxStoreForPlayer(player or localplayer);
end;
function framework:InMenu(Player)
	local IsMenu = true
	if not Player.Character then
		return IsMenu
	end
	for i, v in Player.Character:GetChildren() do
		if v:GetAttribute("ParryShieldId") then
			IsMenu = false
		end
	end
	return IsMenu
end
getgenv().cachedplayers = {}
local Players = game:GetService("Players")
local function updateCached()
    local lp = Players.LocalPlayer
    
    -- Sync dictionary
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= lp then
            getgenv().cachedplayers[p] = true
        end
    end
    
    -- Remove gone players
    for p, _ in pairs(getgenv().cachedplayers) do
        if p.Parent ~= Players or p == lp then
            getgenv().cachedplayers[p] = nil
        end
    end
end
Players.PlayerAdded:Connect(updateCached)
Players.PlayerRemoving:Connect(updateCached)
updateCached()
function framework:GetClosest(Distance, Priority, CheckFunction)
    local n = LPH_JIT_MAX(function(Player)
        if 
            Player.Character
            and Player.Character:FindFirstChild("HumanoidRootPart")
            and Player.Character:FindFirstChild("Humanoid")
            and Player.Character.Humanoid.Health > 0
            and not Player.Character:GetAttribute("IsRagdolled")
            and not Player.Character:GetAttribute("Downed")
            and not whitelisted(Player)
        then
            return true;
        end;
        return false;
    end);
    local Distance = Distance or math.huge;
    local CheckFunction = CheckFunction or n;
    local ClosestPlayers = {};
    for v, _ in pairs(getgenv().cachedplayers) do
        if v == localplayer then
            continue;
        end;
        if Ignored and table.find(Ignored, v.Name) then
            continue;
        end;
        local checkSuccess, checkResult = pcall(CheckFunction, v)
        if not checkSuccess or not checkResult then
            continue;
        end;
		if Toggles.WhitelistFriends.Value then
			local success, isFriend = xpcall(function()
				return localplayer:IsFriendsWith(v.UserId);
			end, function()
				return false;
			end);
			if success and isFriend then
				continue;
			end;
		end;
        if framework:InMenu(v) then
            continue;
        end;
        local HRP = v.Character.HumanoidRootPart;
        local Magnitude = (HRP.Position - humanoidrootpart.Position).Magnitude;
        if Magnitude < Distance then
            Distance = Magnitude;
            ClosestPlayers[v.Name] = v.Character.Humanoid.Health;
        end;
    end;
    if Priority then
        local Sorted = {};
        for k, _ in pairs(ClosestPlayers) do
            table.insert(Sorted, k);
        end;
        table.sort(Sorted);
    end;

    return ClosestPlayers;
end;

function framework:GetClosest2(Distance, CheckFunction)
    local n = LPH_JIT_MAX(function(Player)
		if
			Player.Character
			and Player.Character:FindFirstChild("HumanoidRootPart")
			and Player.Character:FindFirstChild("Humanoid")
			and Player.Character.Humanoid.Health > 0
            and not Player.Character:GetAttribute("IsRagdolled")
            and not Player.Character:GetAttribute("Downed")
			and not Player.Character:FindFirstChildOfClass("ForceField")
			and not whitelisted(Player)
		then
			return true;
		end;
		return false;
	end);

	local Distance = Distance or math.huge;
	local CheckFunction = CheckFunction or n;
	local ClosestPlayer = nil;

	for player, _ in pairs(getgenv().cachedplayers) do
		if player == localplayer then
			continue;
		end;
		local checkSuccess, checkResult = pcall(CheckFunction, player)
		if not checkSuccess or not checkResult then
			continue;
		end;
		if framework:InMenu(player) then
			continue;
		end;
		if Toggles.WhitelistFriends.Value and localplayer:IsFriendsWith(player.UserId) then
			continue;
		end;
		local HRP = player.Character and player.Character:FindFirstChild("HumanoidRootPart");
		if not HRP then continue end
		local Magnitude = (HRP.Position - humanoidrootpart.Position).Magnitude;

		if Magnitude < Distance then
			Distance = Magnitude;
			ClosestPlayer = player.Name;
		end;
	end;

	return ClosestPlayer and { [ClosestPlayer] = true } or nil;
end;

function framework:GetClosestToMouse(Distance, Priority, CheckFunction, MaxDist3D)
	local n = LPH_JIT_MAX(function(Player)
		if
			Player.Character
			and Player.Character:FindFirstChild("HumanoidRootPart")
			and Player.Character:FindFirstChild("Humanoid")
			and Player.Character.Humanoid.Health ~= 0
			and not whitelisted(Player)
		then
			return true;
		end;
		return false;
	end);

	local Distance = Distance or math.huge;
	local CheckFunction = CheckFunction or n;
	local ClosestPlayer = nil;
	local MousePosition = userinputservice:GetMouseLocation();

	for player, _ in pairs(getgenv().cachedplayers) do
		if player == localplayer then
			continue;
		end;
		if Ignored and table.find(Ignored, player.Name) then
			continue;
		end;
		if Toggles.WhitelistFriends.Value and localplayer:IsFriendsWith(player.UserId) then
			continue;
		end;
		local checkSuccess, checkResult = pcall(CheckFunction, player)
		if not checkSuccess or not checkResult then
			continue;
		end;
		if framework:InMenu(player) then
			continue;
		end;

		local HRP = player.Character and player.Character:FindFirstChild("HumanoidRootPart");
		if not HRP then continue end
		local vector, onScreen = camera:WorldToScreenPoint(HRP.Position);
		if onScreen then
            if MaxDist3D and (HRP.Position - camera.CFrame.Position).Magnitude > MaxDist3D then
                onScreen = false
            end
        end
		if onScreen then
			local Magnitude = (MousePosition - vector2new(vector.X, vector.Y)).Magnitude;
			if Magnitude < Distance then
				Distance = Magnitude;
				ClosestPlayer = player;
			end;
		end;
	end;

	return ClosestPlayer;
end;
function framework:IsParrying(Player)
	local State = self:GetSessionData():getState();
	return State.parry.isParrying;
end;

function framework:GetCurrentGameMode()
	local CurrentMap = Map:FindFirstChildOfClass("Model");
	if CurrentMap then
		local Gamemodes = CurrentMap.MapConfiguration.Gamemodes;
		for i, v in pairs(Gamemodes:GetDescendants()) do
			if v:IsA("ObjectValue") then
				return v:FindFirstAncestorOfClass("Folder");
			end;
		end;
	end;
	return nil;
end;

function framework:GetPointEnemyPoint(Gamemode)
	for i, v in pairs(Gamemode:GetDescendants()) do
		if v:IsA("ObjectValue") and v.Value and v.Value:FindFirstChild("Inner") then
			if v.Value.Inner.BrickColor ~= localplayer.Team.TeamColor then
				return v.Parent;
			end;
		end;
	end;
	return nil;
end;

function framework:GetPointTeamPoint(Gamemode)
	for i, v in pairs(Gamemode:GetDescendants()) do
		if v:IsA("ObjectValue") and v.Value and v.Value:FindFirstChild("Inner") then
			if v.Value.Inner.BrickColor == localplayer.Team.TeamColor then
				return v.Parent;
			end;
		end;
	end;
	return nil;
end;

function framework:GetClosestCharacterToOrigin(Origin, Dist)
	local folder = GetPlayerCharacters()
	for i, v in pairs(folder:GetChildren()) do
		local Player = players:GetPlayerFromCharacter(v);
		if not Player then
			continue;
		end;
		if whitelisted(Player) then
			continue;
		end;
		if table.find(Ignored, v.Name) then
			continue;
		end;
		if Toggles.WhitelistFriends.Value and localplayer:IsFriendsWith(Player.UserId) then
			continue;
		end;
		if v == character then
			continue;
		end;
		local hrp = v:FindFirstChild("HumanoidRootPart");
		local head = v:FindFirstChild("Head");
		local humanoid = v:FindFirstChildOfClass("Humanoid");
		if not hrp or not head or not humanoid or humanoid.Health <= 0 then
			continue;
		end;
		local magnitude = (hrp.Position - Origin).Magnitude;
		if magnitude < Dist then
			dis = magnitude;
			target = v;
		end;
	end;

	return target, dis;
end;

function framework:GetClosestCharactersToOrigin(Origin, Dist)
	local closests = {};
	local folder = GetPlayerCharacters()
	for i, v in pairs(folder:GetChildren()) do
		local Player = players:GetPlayerFromCharacter(v);
		if not Player then
			continue;
		end;
		if whitelisted(Player) then
			continue;
		end;
		if table.find(Ignored, v.Name) then
			continue;
		end;
		if Toggles.WhitelistFriends.Value and localplayer:IsFriendsWith(Player.UserId) then
			continue;
		end;
		if v == character then
			continue;
		end;
		local hrp = v:FindFirstChild("HumanoidRootPart");
		local head = v:FindFirstChild("Head");
		local humanoid = v:FindFirstChildOfClass("Humanoid");
		if not hrp or not head or not humanoid or humanoid.Health <= 0 then
			continue;
		end;
		local magnitude = (hrp.Position - Origin).Magnitude;
		if magnitude < Dist then
			table.insert(closests, v);
		end;
	end;
	return closests;
end;

function framework:Chance(number)
	return (mathfloor(Random.new():NextNumber(0, 1) * 100) / 100) <= mathfloor(number) / 100;
end;

function framework:IsPartClose(Part, Distance)
	if not humanoidrootpart then
		return false;
	end;
	if not Distance then
		return false;
	end;
	if Part
		and Part:IsA("BasePart")
		and Part.Parent
	then
		local Mag = (Part.Position - humanoidrootpart.Position).Magnitude;
		if Mag <= Distance then
			return true;
		end;
	end;
	return false;
end;

function framework:GetMeleeFuncs(Table)
	local tool = Table:GetWeapon();
	if not tool then
		return { parry = function() end };
	end;
	for i, v in pairs(getconnections(tool.Equipped)) do
		if v.Function then
			local uv = getupvalues(v.Function);
			if #uv == 1 and uv[1].singleWeaponMetadata then
				return uv[1];
			end;
		end;
	end;
	return nil;
end;
TweenService = game:GetService("TweenService");
local function slow_tween(CF)
	local part = humanoidrootpart;
	local dist = (part.Position - CF.Position).Magnitude;
	local speed = 60;
	local time = dist / speed;
	local tween = TweenService:Create(part, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = CF});
	tween:Play();
	tween.Completed:Wait();
end;
function framework:Teleport(CF)
	if getgenv().safe_mode then
		slow_tween(CF);
		return;
	end;
	if driver then
		driver.CFrame = CF;
	else
		teleport(CF);
	end;
	local start = os.clock();
	local maxtime = 3;
	local owned = false;
	local notowner = false;
	repeat
		local owns = isnetworkowner(humanoidrootpart);
		if owns then
			owned = true;
		elseif owned then
			notowner = true;
			local tool = localplayer.Backpack:GetChildren()[1];
			if tool then
				humanoid:EquipTool(tool);
				task.wait();
				humanoid:UnequipTools();
			end;
		end;
		task.wait();
	until notowner or (os.clock() - start) >= maxtime;
	task.wait(0.5);
	if notowner then
		if driver then
			humanoidrootpart.CFrame = CF;
		else
			teleport(CF);
		end;
	end;
end;

local activeRenderSteps = {}
function framework:BindToRenderStep(toBind, delayTime, priority)
    local name = httpservice:GenerateGUID(false)
    table.insert(activeRenderSteps, name)
	local isDelayed = false;
	runservice:BindToRenderStep(
		name,
		(priority and priority or Enum.RenderPriority.First).Value,
		delayTime
			and LPH_JIT_MAX(function()
				if isDelayed then
					return;
				end;
				isDelayed = true;
				taskspawn(toBind);
				task.wait(delayTime);
				isDelayed = false;
			end)
			or toBind
	);
    return name
end;
function framework:UnbindAll()
    for _, name in ipairs(activeRenderSteps) do
        pcall(function() runservice:UnbindFromRenderStep(name) end)
    end
    activeRenderSteps = {}
end
function framework:InMenu(Player)
	local IsMenu = true;
	local Player = Player or localplayer
	if not Player.Character then
		return IsMenu;
	end;
	for i, v in pairs(Player.Character:GetChildren()) do
		if v:GetAttribute("ParryShieldId") then
			IsMenu = false;
		end;
	end;
	return IsMenu;
end;
framework.Check = LPH_JIT_MAX(function(self, Character)
	local success, result = pcall(function()
		if not Character or table.find(ParryingCharacters, Character) then
			return false;
		end;
		
		if not Character.Parent then return false end

		local Humanoid = Character:FindFirstChildOfClass("Humanoid");
		local Player = players:GetPlayerFromCharacter(Character);
		if Player then
			local Rodux = framework:GetSessionData(Player);
			if Rodux and Rodux:getState().parry.isParrying then
				return false;
			end;
		end;
		if Humanoid then
			local Animator = Humanoid:FindFirstChild("Animator");
			if Animator then
				local PlayingAnimations = Animator:GetPlayingAnimationTracks();
				for i, v in pairs(PlayingAnimations) do
					if v.Animation.Name:match("Parry") then
						return false;
					end;
				end;
			end;
		end;

		for i, v in pairs(Character:GetChildren()) do
			if v:GetAttribute("ParryShieldId") and #v:GetChildren() == 1 then
				return v:GetChildren()[1].Transparency == 1;
			end;
		end;

		return true;
	end)
	
	if not success then
		return false
	end
	return result
end);
function framework:WaitForDescendant(Root, Name, Condition, Timeout)
	local Descendant = nil;
	local Timedout = false;

	task.delay(Timeout or 9e9, function()
		Timedout = true;
	end);
	repeat
		local Instance = Root:FindFirstChild(Name, true);
		if Instance and Condition(Instance) then
			Descendant = Instance;
			break;
		end;
		runservice.RenderStepped:Wait();
	until Descendant or Timedout;

	return Descendant;
end;
local rangedog = {};
local weaponorder = {};
local ranged = {};
for i, v in pairs(modules.Name["WeaponsInOrder"]) do
	weaponorder[v.id] = v;
end;
for name, id in pairs(modules.Name["WeaponIds"]) do
	local meta = modules.Name["WeaponMetadata"][id];
	if meta and meta.class == "ranged" then
		table.insert(ranged, name);
	end;
end;
for i, v in pairs(ranged) do
	local m = framework:getmetadata(v) or framework:getutility(v);
	if m then
		table.insert(rangedog, { name = v, og = table.clone(m) });
	end;
end;
local function deepmodify(tbl, key, val)
	if type(tbl) ~= "table" then
		return;
	end;
	if tbl[key] ~= nil then
		tbl[key] = val;
	end;
	for _, v in pairs(tbl) do
		if type(v) == "table" then
			deepmodify(v, key, val);
		end;
	end;
end;
function modifyranged(name, val)
	for _, v in pairs(rangedog) do
		local m = framework:getmetadata(v.name) or framework:getutility(v.name);
		if m then
			deepmodify(m, name, val);
		end;
	end;
end;
local function revert(tbl, original, key)
	if type(tbl) ~= "table" then
		return;
	end;
	if original[key] ~= nil then
		tbl[key] = original[key];
	end;
	for k, v in pairs(tbl) do
		if type(v) == "table" and type(original[k]) == "table" then
			revert(v, original[k], key);
		end;
	end;
end;
function revertranged(name)
	for _, v in pairs(rangedog) do
		local m = framework:getmetadata(v.name) or framework:getutility(v.name);
		if m then
			revert(m, v.og, name);
		end;
	end;
end;
for k, v in pairs(framework) do
	if typeof(v) == "function" then
		framework[k] = newcclosure(v);
	end;
end;
-- stamina
local applied = false;
local appliedmultiplier = nil;
local originalRegen = nil;
local originalDelay = nil;
runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
    local stamina = modules.Name["DefaultStaminaHandlerClient"].getDefaultStamina();
    if not stamina then return; end;
    if not originalRegen then
        originalRegen = stamina.gainPerSecond;
    end;
    if not originalDelay then
        originalDelay = stamina.gainDelay;
    end;
    if not getgenv().stamenabled then
        stamina.gainPerSecond = originalRegen;
        stamina.gainDelay = originalDelay;
        if applied and appliedmultiplier then
            stamina:removeMaxStaminaMultiplier(appliedmultiplier);
            stamina:setStamina(stamina:getMaxStamina());
            applied = false;
            appliedmultiplier = nil;
        end;
        return;
    end;
    if getgenv().infstamina then
        if not applied then
            local defaultMax = stamina._baseMaxStamina;
            local multiplier = 1e6 / defaultMax;
            stamina:addMaxStaminaMultiplier(multiplier);
            appliedmultiplier = multiplier;
            applied = true;
        end;
        stamina:setStamina(stamina:getMaxStamina());
    else
        if applied and appliedmultiplier then
            stamina:removeMaxStaminaMultiplier(appliedmultiplier);
            stamina:setStamina(stamina:getMaxStamina());
            applied = false;
            appliedmultiplier = nil;
        end;
    end;
    if getgenv().stamregentoggle then
        stamina.gainPerSecond = getgenv().stamregenrate or originalRegen;
    else
        stamina.gainPerSecond = originalRegen;
    end;
    if getgenv().stamdelaystate then
        stamina.gainDelay = getgenv().stamindelayamount or originalDelay;
    else
        stamina.gainDelay = originalDelay;
    end;
end));

-- major toggles
local Players = players
local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = localplayer
local Map = workspace:FindFirstChild("Map")
local FakeHitboxes = {}
getgenv().Config = getgenv().Config or {
    HitboxSize   = 20,
    ShowHitbox   = false,
    HitboxExpand = false,
    HBEPart      = "Torso",
    HitboxColor  = Color3.fromRGB(100, 83, 255),
    Wallbang     = false,
    AlwaysHead   = false,
}
local R6BodyParts = {
    "Head", "Torso",
    "Left Arm", "Right Arm",
    "Left Leg", "Right Leg",
	"Random";
};
local function ApplyHitbox(Character)
    if Character:FindFirstChild("FakeHitbox") then return end
    local FakeHitbox = Instance.new("Part")
    FakeHitbox.Size = vector3new(Config.HitboxSize, Config.HitboxSize, Config.HitboxSize)
    FakeHitbox.CanCollide = false
    FakeHitbox.Transparency = Config.ShowHitbox and 0.7 or 1
    FakeHitbox.Name  = "FakeHitbox"
    FakeHitbox.Color  = Config.HitboxColor
    FakeHitbox:SetAttribute("IsCharacterHitbox", Config.HitboxExpand)
    FakeHitbox.Massless = true
    FakeHitbox.CastShadow = false
    FakeHitbox.Parent = Character
    FakeHitbox:AddTag("RANGED_CASTER_IGNORE_LIST")
    local Weld = Instance.new("Weld")
    Weld.Part0 = Character:WaitForChild("HumanoidRootPart")
    Weld.Part1 = FakeHitbox
    Weld.Parent = FakeHitbox

    table.insert(FakeHitboxes, FakeHitbox)
end

for _, v in PlayerCharacters:GetChildren() do
    if v ~= localplayer.Character then
        ApplyHitbox(v)
    end
end
for player, _ in pairs(getgenv().cachedplayers) do
    if player ~= localplayer then
        if player.Character then
            ApplyHitbox(player.Character)
        end
        player.CharacterAdded:Connect(ApplyHitbox);
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(ApplyHitbox);
end)
runservice.RenderStepped:Connect(LPH_JIT_MAX(function()
    for i = #FakeHitboxes, 1, -1 do
        local v = FakeHitboxes[i]

        if not v:IsDescendantOf(game) then
            table.remove(FakeHitboxes, i)
            continue
        end

        local toExpand = v.Parent:FindFirstChild(Config.HBEPart)
        if toExpand and v.Weld and v.Weld.Part0 ~= toExpand then
            v.Weld.Part0 = toExpand
        end

        v.Transparency = (Config.HitboxExpand and Config.ShowHitbox) and 0.7 or 1
        v.Color        = Config.HitboxColor
        v.Size         = vector3new(Config.HitboxSize, Config.HitboxSize, Config.HitboxSize)
        v:SetAttribute("IsCharacterHitbox", Config.HitboxExpand)
        
        if not Config.HitboxExpand then
            if not v:HasTag("RANGED_CASTER_IGNORE_LIST") then
                v:AddTag("RANGED_CASTER_IGNORE_LIST")
            end
        else
            if v:HasTag("RANGED_CASTER_IGNORE_LIST") then
                v:RemoveTag("RANGED_CASTER_IGNORE_LIST")
            end
        end
    end
end));
if modules.Name["RangedHitVisuals"] and modules.Name["RangedHitVisuals"].defaultHit then
    local old = modules.Name["RangedHitVisuals"].defaultHit
    
    modules.Name["RangedHitVisuals"].defaultHit = LPH_JIT_MAX(function(player, tool, cfg, hitpart, hitcf, normal, material, cosmetic)
        local newHitCf = hitcf
        
        if Config.HitboxExpand and hitpart and hitpart.Name == "FakeHitbox" then
            local part = hitpart.Parent:FindFirstChild(
                Config.HBEPart == "Random" and R6BodyParts[mathrandom(1, #R6BodyParts)] or Config.HBEPart
            ) or hitpart.Parent:FindFirstChild("Torso")
            
            if part then
                local metadata = framework:getmetadata(tool.Name)
                if metadata and metadata.speed then
                    task.wait((hitcf.Position - part.Position).Magnitude / metadata.speed)
                end
                
                newHitCf = part.CFrame
                    * cosmetic.CFrame.Rotation
                    * cframenew(
                        mathrandom(-1,1) * (part.Size.X / 2),
                        mathrandom(-1,1) * (part.Size.Y / 2),
                        mathrandom(-1,1) * (part.Size.Z / 2)
                    )
            end
        end
        
        return old(player, tool, cfg, hitpart, newHitCf, normal, material, cosmetic)
    end);
end
if modules.Name["RangedWeaponClient"] and modules.Name["RangedWeaponClient"].updateIgnoreList then
    modules.Name["RangedWeaponClient"].updateIgnoreList = LPH_JIT_MAX(function(rangedData)
        if tick() - (rangedData._lastIgnoreListUpdateTick or 0) < 5 then
            return rangedData._ignoreList
        end

        rangedData._lastIgnoreListUpdateTick = tick()
        local character = rangedData._character
        local tagged = CollectionService:GetTagged("RANGED_CASTER_IGNORE_LIST")

        table.insert(tagged, character)

        if Config.Wallbang and Map then
            table.insert(tagged, Map)
            table.insert(tagged, Workspace.Terrain)
        end

        rangedData._ignoreList = tagged
        return tagged
    end);
end;
local spin = Instance.new("Animation");
spin.AnimationId = "rbxassetid://188632011";
local Loaded = {};
function framework:SpinLoop()
	if spineabled and not Loaded[humanoid] then
		Loaded[humanoid] = humanoid:LoadAnimation(spin);
	elseif spineabled and Loaded[humanoid] then
		Loaded[humanoid].Priority = Enum.AnimationPriority.Action4;
		Loaded[humanoid].Looped = true
		Loaded[humanoid]:AdjustSpeed(spinspeed)
		if not Loaded[humanoid].IsPlaying then
			Loaded[humanoid]:Play()
		end;
	end;
	if not spineabled and Loaded[humanoid] then
		Loaded[humanoid]:Stop();
	end;
end;
-- Public API
mmisc:AddToggle("Killsay", {
    Text = "killsay";
    Default = false;
	Callback = function(v)
		getgenv().killsay = v;
	end;
});
do
    local old = {};
    local old1 = modules.Name["RoduxStore"].store.dispatch;
    local function hook(modulename, funcname, newfunc)
        local mod = modules.Name[modulename];
        if not mod or not mod[funcname] then
            return;
        end;
        old[modulename .. "_" .. funcname] = mod[funcname];
        mod[funcname] = LPH_JIT_MAX(function(...)
            return newfunc(old[modulename .. "_" .. funcname], ...);
        end);
    end;
	hook("JumpHandlerClient", "getCanJump", function(oldfunc, ...)
		if getgenv().canalwaysjump then
			return true;
		end;
		return oldfunc(...);
	end);
	hook("ParryHandlerClient", "createStateToggler", function(oldfunc, ...)
		if getgenv().nps then
			return;
		end;
		return oldfunc(...);
	end);
	hook("PlatformHandlerClient", "getPlatformType", function(oldfunc, ...)
		if (getgenv().devicespoofer and getgenv().selecteddevice) then
			return tostring(getgenv().selecteddevice);
		end;
		return oldfunc(...);
	end);
	hook("AntiCheatHandler", "getIsAcDisabled", function(oldfunc, ...)
		if not checkcaler() then
			return true;
		end;
		return oldfunc(...);
	end);
    framework:argmodify("MeleeDamage", {}, function(n,...)
        local args = {...}
        if getgenv().AntiParry and not framework:Check(args[2].Parent) then
            return {[1] = nil}
        end
        if Config.HitboxExpand and args[2].Name == "FakeHitbox" then
            local part = args[2].Parent:FindFirstChild(Config.HBEPart == "Random" and R6BodyParts[math.random(1, #R6BodyParts)] or Config.HBEPart) or args[2].Parent:FindFirstChild("Torso")
            if part then
                return {[2] = part, [5] = CFrame.new(
                    (math.random() * math.random(-1, 1)) * (part.Size.X / 2), 
                    (math.random() * math.random(-1, 1)) * (part.Size.Y / 2), 
                    (math.random() * math.random(-1, 1)) * (part.Size.Z / 2)
                )}
            end
        end
        return
    end)
    framework:argmodify("MeleeFinish", {}, function(n,...)
        local args = {...}
        if Config.HitboxExpand and args[2].Name == "FakeHitbox" then
            local part = args[2].Parent:FindFirstChild(Config.HBEPart == "Random" and R6BodyParts[math.random(1, #R6BodyParts)] or Config.HBEPart) or args[2].Parent:FindFirstChild("Torso")
            if part then
                return {[2] = part}
            end
        end
        return
    end)
    framework:argmodify("RangedHit",{},function(n,...)
        local args = {...}
        if Config.HitboxExpand and args[2].Name == "FakeHitbox" then
            local part = args[2].Parent:FindFirstChild(Config.HBEPart == "Random" and R6BodyParts[math.random(1, #R6BodyParts)] or Config.HBEPart) or args[2].Parent:FindFirstChild("Torso")
            if part then
                return {
                    [2] = part,
                    [4] = part.Position,
                    [5] = --part.CFrame:ToObjectSpace(
                        CFrame.Angles(args[5]:ToEulerAnglesYXZ())
                        * CFrame.new(
                            (math.random() * math.random(-1, 1)) * (part.Size.X / 2), 
                            (math.random() * math.random(-1, 1)) * (part.Size.Y / 2), 
                            (math.random() * math.random(-1, 1)) * (part.Size.Z / 2)
                        )
                    --)
                }
            end
        end
        if getgenv().AlwaysHead then
            return {[2] = args[2].Parent:FindFirstChild("Head")}
        end
        return
    end)
    framework:argmodify("RangedExplode",{},function(n,...)
        local args = {...}
        if Config.HitboxExpand and args[2].Name == "FakeHitbox" then
            local part = args[2].Parent:FindFirstChild(Config.HBEPart == "Random" and R6BodyParts[math.random(1, #R6BodyParts)] or Config.HBEPart) or args[2].Parent:FindFirstChild("Torso")
            if part then
                return {
                    [2] = part,
                    [4] = part.Position,
                    [5] = --part.CFrame:ToObjectSpace(
                        CFrame.Angles(args[5]:ToEulerAnglesYXZ())
                        * CFrame.new(
                            (math.random() * math.random(-1, 1)) * (part.Size.X / 2), 
                            (math.random() * math.random(-1, 1)) * (part.Size.Y / 2), 
                            (math.random() * math.random(-1, 1)) * (part.Size.Z / 2)
                        )
                    --)
                }
            end
        end
        if getgenv().AlwaysHead then
            return {[2] = args[2].Parent:FindFirstChild("Head")}
        end
        return
    end)
	local CanFireStartFallDamage = true;
	framework:argmodify("StartFallDamage", {}, function(n, ...)
		if not checkcaller() and not CanFireStartFallDamage then
			return;
		end;
		return;
	end);
	framework:argmodify("TakeFallDamage", {}, function(n, ...)
		if not checkcaller() and not CanFireStartFallDamage then
			return;
		end;
		return;
	end);
	framework:argmodify("LogKick", {}, function(n, ...)
		if not checkcaller() then
			return;
		end;
		return;
	end);
	framework:argmodify("LogACTrigger", {}, function(n, ...)
		if not checkcaller() then
			return;
		end;
		return;
	end);
	framework:argmodify("GotHitRE", {}, function(n, ...)
		if (not checkcaller() and getgenv().nut) then
			return;
		end;
		return;
	end);
	hook("ClaymoreTrapPartClient", "new", function(oldfunc, ...)
		if getgenv().nut then
			return;
		end;
		return oldfunc(...);
	end);
	hook("OpenBearTrapPartClient", "new", function(oldfunc, ...)
		if getgenv().nut then
			return;
		end;
		return oldfunc(...);
	end);
	hook("HealthHandler", "getRealHealth", function(oldfunc, ...)
		if getgenv().nhe then
			return math.huge;
		end;
		return oldfunc(...);
	end);
	hook("RangedWeaponClient", "cancelReload", function(oldfunc,...)
		if getgenv().nocancel then
			return;
		end;
		return oldfunc(...);
	end);
	hook("InstancePropsHandler", "add", function(oldfunc, a, b, c, ...)
		if getgenv().ngpe and a ~= character and c == "GHOST_POTION" then
			return;
		end;
		return oldfunc(a, b, c, ...);
	end);
	hook("ItemAttachmentHandlerClient", "addItemAttachment", function(oldfunc, ...)
        if getgenv().hideweapon then
            return;
        end;
        return oldfunc(...);
    end);
    hook("WaterHandler", "getBoundsIsInWater", function(oldfunc, ...)
        if getgenv().antiswim then
            return;
        end;
        return oldfunc(...);
    end);
	local function nkb(funckey)
		return function(oldfunc, self, ...)
			local char = character or (localplayer and localplayer.Character);
			if getgenv().nkb and char then
				for i = 1, select("#", ...) do
					local v = select(i, ...);
					if typeof(v) == "Instance" and (v == char or v:IsDescendantOf(char)) then
						return;
					end;
				end;
			end;
			return oldfunc(self, ...)
		end;
	end;
	hook("KnockbackHandler", "knockbackCharacterPart", nkb("KnockbackHandler_knockbackCharacterPart"));
	hook("KnockbackHandler", "knockbackCharacterPartAngular", nkb("KnockbackHandler_knockbackCharacterPartAngular"));
	hook("KnockbackHandler", "impulseCharacterPart", nkb("KnockbackHandler_impulseCharacterPart"));
	hook("KnockbackHandler", "impulseCharacterPartAngular", nkb("KnockbackHandler_impulseCharacterPartAngular"));
	if remotes then
		local flashbang = remotes.ApplyFlashbangEffect;
		local flashbomb = remotes.ApplyFlashbombEffect;
		if flashbang and flashbang.Callbacks then
			local old2 = flashbang.Callbacks[1]
			flashbang.Callbacks = {
				function(...)
					if getgenv().noflash then
						return;
					end;
					return old2(...);
				end,
			};
		end;
		if flashbomb and flashbomb.Callbacks then
			local old = flashbomb.Callbacks[1];
			flashbomb.Callbacks = {
				function(...)
					if getgenv().noflash then
						return;
					end;
					return old(...);
				end,
			};
		end;
	end;
    framework:argmodify("UpdateIsCrouching", { [1] = true }, function(n, ...)
        if getgenv().nnt then
            return true;
        end;
    end);
	framework:argmodify("UpdateHasVc", { [1] = true }, function(n, ...)
		if getgenv().vcenabled then
			return true;
		end;
		return;
	end);
	local store = modules.Name["RoduxStore"].store;
	local olddispatch = store.dispatch;
	store.dispatch = function(table, sigma, ...)
		if typeof(sigma) == "table" then
			if sigma.type == "PARRY_IS_PARRIED_CHANGE" or sigma.type == "PARRY_IS_KNEELED_CHANGE" then
				getgenv().parrystununtil = tick() + 0.35;
				if getgenv().voidonparry and (tick() - (getgenv().last_void_parry or 0) > 3) then
					getgenv().last_void_parry = tick();
					taskspawn(LPH_JIT_MAX(function()
						pcall(function()
							if Toggles.voidenabled.Value and Options.voidenabledkey:GetState() then
								getgenv().voidenabled = true;
							else
								local old = getgenv().voidenabled;
								getgenv().void_lock = true;
								getgenv().voidenabled = true;
								taskspawn(function()
									while getgenv().void_lock do
										getgenv().voidenabled = true;
										task.wait();
									end;
								end);
								task.delay(2, function()
									getgenv().void_lock = false;
									if not (Toggles.voidenabled.Value and Options.voidenabledkey:GetState()) then
										getgenv().voidenabled = old;
									end;
								end);
							end;
						end);
					end));
				end;
				if getgenv().nps then
					local JumpPower = modules.Name["JumpHandlerClient"];
					local Walkspeed = modules.Name["WalkSpeedHandlerClient"];
					local AutoRotate = modules.Name["AutoRotateHandlerClient"];
					if JumpPower and Walkspeed and AutoRotate then
						local WSContainer = Walkspeed.getValueContainer();
						local JPContainer = JumpPower.getJumpPowerValueContainer();
						local ARContainer = AutoRotate.getAutoRotateToggleCounter();
						taskspawn(LPH_JIT_MAX(function()
							task.wait(0.1);
							modules.Name["CoreGuiHandlerClient"].toggleBackpack(true);
							modules.Name["CoreGuiHandlerClient"].toggleResetButton(true);
							olddispatch(table, { type = "STUN_CLIENT_IS_STUNNED_COUNT_DECREMENT" });
							modules.Name["ToolHandlerClient"].reEquipToolSet();
							modules.Name["EnvironmentCommunication"]:Fire(
								"ToggleAnimationKind",
								"idle",
								"parried",
								false,
								{ playTransitionTime = 0.1, stopTransitionTime = 0.1 }
							);
							WSContainer:removeFromZeroValueCount();
							JPContainer:removeFromZeroValueCount();
							ARContainer:add(1000);
						end));
					end;
				end;
			elseif sigma.type == "PARRY_CLIENT_IS_AFTER_PARRY_STUNNED_CHANGE" then
				getgenv().parrystununtil = tick() + 0.35;
				if getgenv().nps2 then
					local JumpPower = modules.Name["JumpHandlerClient"];
					local Walkspeed = modules.Name["WalkSpeedHandlerClient"];
					local AutoRotate = modules.Name["AutoRotateHandlerClient"];
					if JumpPower and Walkspeed and AutoRotate then
						local WSContainer = Walkspeed.getValueContainer();
						local JPContainer = JumpPower.getJumpPowerValueContainer();
						local ARContainer = AutoRotate.getAutoRotateToggleCounter();
						WSContainer:removeFromZeroValueCount();
						JPContainer:removeFromZeroValueCount();
						ARContainer:add(1000);
					end;
					return;
				end;
			end;
		end;
		return olddispatch(table, sigma, ...);
	end;
end;
local connection; connection = runservice.Heartbeat:Connect(LPH_JIT_MAX(function(dt)
    if not getgenv().spinenabled then return; end;
    if not humanoidrootpart then return; end;
    local radians = math.rad(getgenv().spinspeed) * dt * 60;
    humanoidrootpart.CFrame = humanoidrootpart.CFrame * cframeangles(0, radians, 0);
end));
local function connect(char)
    character = char;
    humanoid = char:WaitForChild("Humanoid");
    humanoidrootpart = char:WaitForChild("HumanoidRootPart");
    task.wait();
end;
localplayer.CharacterAdded:Connect(connect);
if localplayer.Character then
    connect(localplayer.Character);
end;
network:BindEvents({
    CreateAntiCheatNotification = function(data)
        if data.punishType == "rectified" and getgenv().fno and humanoidrootpart then
            repeat
                local tool = localplayer.Backpack:GetChildren()[1];
                if tool then
                    humanoid:EquipTool(tool);
                    task.wait();
                    humanoid:UnequipTools();
                else
                    task.wait();
                end;
            until humanoidrootpart.ReceiveAge == 0;
        end;
    end;
});

-- ui setup
local function updatefeature(togglename, keyname, setter)
    local ok, result = pcall(function()
        local toggleon = Toggles[togglename] and Toggles[togglename].Value;
        local keyon = Options[keyname] and Options[keyname]:GetState();
        return toggleon and keyon;
    end);
    if ok then
        setter(result);
    end;
end;
do
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local localplayer = Players.LocalPlayer
local camera = workspace.CurrentCamera

local lastKeybindState = false

local character = localplayer.Character or localplayer.CharacterAdded:Wait()

local main_ranged = tabs.ranged:AddRightTabbox()
local silent_tab = main_ranged:AddTab("silent aim")
local aimbot_tab = main_ranged:AddTab("aimbot")
local ragebotsection = tabs.ranged:AddRightGroupbox("ragebot");
localplayer.CharacterAdded:Connect(function(char)
	character = char
end)

-- Using global cachedplayers

Players.PlayerRemoving:Connect(function(player)
	getgenv().cachedplayers[player] = nil
	if getgenv().lockedTarget == player then
		getgenv().lockedTarget = nil
	end
end)

aimbot_tab:AddToggle("aimbot_toggle", {
	Text = "aimbot",
	Callback = function(value)
		if value then
			getgenv().AimbotEnabled = true
			lockedTarget = nil

			task.spawn(LPH_JIT_MAX(function()
				while getgenv().AimbotEnabled do
					RunService.RenderStepped:Wait()

					local keybindPressed = Options.AimbotKeybind:GetState()

					if keybindPressed then
						local mouse = localplayer:GetMouse()
						local fovRadius = Options.FOVCircleSize.Value or 500
						local hitPartName = Options.AimbotHitPart.Value or "Head"

						local needsNewTarget =
							not getgenv().lockedTarget
							or not getgenv().lockedTarget.Character
							or not getgenv().lockedTarget.Character:FindFirstChild("Humanoid")
							or getgenv().lockedTarget.Character.Humanoid.Health <= 0

						local keybindJustPressed = keybindPressed and not lastKeybindState

						if Toggles.AutoSelect.Value or needsNewTarget or (not Toggles.AutoSelect.Value and keybindJustPressed) then
							local closestTarget = nil
							local closestDistance = math.huge

							for player,_ in pairs(getgenv().cachedplayers) do
								if player and player.Parent and player ~= localplayer and player.Character then
									local humanoid = player.Character:FindFirstChild("Humanoid")
									local hrp = player.Character:FindFirstChild("HumanoidRootPart")
									local targetPart = player.Character:FindFirstChild(hitPartName)

									if humanoid and humanoid.Health > 0 and hrp and targetPart then
										local screenPos,onScreen = camera:WorldToViewportPoint(targetPart.Position)

										if onScreen then
											local mousePos = Vector2.new(mouse.X,mouse.Y)
											local targetPos = Vector2.new(screenPos.X,screenPos.Y)

											local distance = (mousePos-targetPos).Magnitude

											if distance < fovRadius and distance < closestDistance then
												closestDistance = distance
												closestTarget = player
											end
										end
									end
								end
							end

							getgenv().lockedTarget = closestTarget
						end

						lastKeybindState = keybindPressed

						if getgenv().lockedTarget and getgenv().lockedTarget.Character then
							local targetPart =
								getgenv().lockedTarget.Character:FindFirstChild(hitPartName)
								or getgenv().lockedTarget.Character:FindFirstChild("HumanoidRootPart")

							if targetPart then
								local aimPos = targetPart.Position

								if Toggles.Prediction.Value then
									local hrp = getgenv().lockedTarget.Character:FindFirstChild("HumanoidRootPart")

									if hrp then
										local targetVelocity = hrp.Velocity
										local predictionAmount = Options.PredictionAmount.Value or 0.13
										aimPos = aimPos + (targetVelocity * predictionAmount)
									end
								end

								if Toggles.Smooth.Value then
									local smoothAmount = Options.SmoothAmount.Value or 0.15
									local currentCFrame = camera.CFrame
									local targetCFrame = CFrame.new(camera.CFrame.Position,aimPos)

									camera.CFrame = currentCFrame:Lerp(targetCFrame,smoothAmount)
								else
									camera.CFrame = CFrame.new(camera.CFrame.Position,aimPos)
								end
							end
						end
					else
						lastKeybindState = keybindPressed
					end
				end
			end))
		else
			getgenv().AimbotEnabled = false
			getgenv().lockedTarget = nil
		end
	end
}):AddKeyPicker("AimbotKeybind", {
	Default = "MB2",
	SyncToggleState = false,
	Mode = "Hold",
	Text = "aimbot",
	NoUI = false
})
silent_tab:AddToggle("SilentAim", {
	Default = false,
	Text = "silent aim"
})
silent_tab:AddToggle("stickyaim", {
	Text = "sticky aim",
	Default = false,
	Callback = function()
		local state = Toggles.stickyaim.Value and Options.stickbind:GetState()
		getgenv().stick = state
		if not state then
			getgenv().stickTarget = nil
		end
	end
}):AddKeyPicker("stickbind", {
	Text = "sticky aim",
	Default = "T",
	NoUi = true,
	Callback = function()
		local state = Toggles.stickyaim.Value and Options.stickbind:GetState()
		getgenv().stick = state
		if not state then
			getgenv().stickTarget = nil
		end
	end
})
local silent_children = silent_tab:AddDependencyBox()
silent_children:AddToggle("ShowFOV", {
	Text = "show fov",
	Default = false
}):AddColorPicker("fov_1_3", {
    Title = "fov color";
    Default = Color3.fromRGB(100, 100, 100);
    Transparency = 0;
})
silent_children:AddSlider("FOVSize", {
	Text = "fov size",
	Default = 500,
	Min = 1,
	Max = 1000,
	Rounding = 0,
	Compact = true,
	Suffix = " px"
})
silent_children:AddToggle("Resolver", {
	Text = "resolver",
	Default = false
})

silent_children:AddToggle("avoidprojectiles", {
	Text = "avoid projectiles",
	Default = false
})

silent_children:AddDropdown("ClosestType", {
	Text = "check type",
	Default = "Closest To Mouse",
	Values = {"Closest To Mouse", "Closest To Arrow", "Only Redirect To Target"}
})

silent_children:AddDropdown("SilentHitPart", {
	Text = "hit part",
	Default = "Head",
	Values = {"Head", "Torso", "Random"}
})

silent_children:AddSlider("SilentAimRange", {
	Text = "velocity",
	Default = 1,
	Min = 1,
	Max = 19,
	Rounding = 0,
	Compact = true,
	Suffix = " studs",
	Tooltip = "lower for more accuracy, higher for faster projectiles"
})

silent_children:AddSlider("HitChance", {
	Text = "hit chance",
	Default = 100,
	Min = 1,
	Max = 100,
	Rounding = 0,
	Compact = true,
	Suffix = "%"
})
silent_children:SetupDependencies({
	{ Toggles.SilentAim, true }
})
-- ragebot

ragebotsection:AddToggle("Ragebot", {
	Text = "ragebot";
	Default = false;
	Callback = function()
		updatefeature("Ragebot", "ragebotkey", function(state)
			getgenv().ragebot = state;
		end);
	end;
}):AddKeyPicker("ragebotkey", {
	Text = "ragebot";
	Default = "H";
	Callback = function()
		updatefeature("Ragebot", "ragebotkey", function(state)
			getgenv().ragebot = state;
		end);
	end;
});
local ragebot_children = ragebotsection:AddDependencyBox();
ragebot_children:AddToggle("ShowRageBotTarget", {
	Text = "show ragebot target";
	Default = false;
	Callback = function(value)
		if not value then
			if RagebotHighlight then
				RagebotHighlight.Adornee = nil;
			end;
		end;
	end;
});
ragebot_children:AddToggle("safe_mode_ragebot", {
    Text = "<font color=\"#ff0000\">safe mode</font>",
    Default = false,
})
local safe_mode_slider = ragebot_children:AddDependencyBox();
safe_mode_slider:AddSlider("safe_mode_slider1", {
    Text = "cooldown",
    Default = 1,
    Min = 0.1,
    Max = 3,
    Rounding = 1,
    Compact = true,
})
ragebot_children:AddSlider("RagebotDist", {
	Text = "ragebot distance";
	Default = 19;
	Min = 1;
	Max = 1000;
	Rounding = 0;
	Compact = true;
	Suffix = " studs";
});
ragebot_children:SetupDependencies({
    { Toggles.Ragebot, true };
});
safe_mode_slider:SetupDependencies({
    { Toggles.safe_mode_ragebot, true };
});
-- aimbot ui

aimbot_tab:AddToggle("AutoSelect", {
	Text = "auto select",
	Default = false
})

aimbot_tab:AddToggle("Smooth", {
	Text = "smooth out",
	Default = false
})

aimbot_tab:AddSlider("SmoothAmount", {
	Text = "smooth amount",
	Default = 0.15,
	Min = 0.01,
	Max = 1,
	Rounding = 2,
	Compact = true
})

aimbot_tab:AddToggle("Prediction", {
	Text = "prediction",
	Default = false
})

aimbot_tab:AddSlider("PredictionAmount", {
	Text = "prediction amount",
	Default = 0.13,
	Min = 0.01,
	Max = 0.5,
	Rounding = 2,
	Compact = true
})

aimbot_tab:AddDropdown("AimbotHitPart", {
	Text = "hit part",
	Default = "Head",
	Values = {"Head", "Torso", "Random"}
})
end
-- main combat
main:AddToggle("KillAura", {
	Text = "kill aura";
	Default = false;
    Callback = function()
        updatefeature("KillAura", "killaurabind", function(state)
            getgenv().killaura = state;
        end);
    end;
}):AddKeyPicker("killaurabind", {
	Text = "kill aura";
	Default = "B";
	NoUi = true;
    Callback = function()
        updatefeature("KillAura", "killaurabind", function(state)
            getgenv().killaura = state;
        end);
    end;
});
main:AddSlider("KillAuraRange", {
	Text = "kill aura range";
	Default = 15;
	Min = 1;
	Max = 15;
	Rounding = 0;
	Compact = true;
});
main:AddDropdown("KillAuraType", {
	Values = {"single person", "multiple people"};
	Default = "single person";
	Multi = false;
	Text = "kill aura type";
});
main:AddToggle("PlayAnimation", {
	Text = "play animation";
	Default = false;
});
main:AddToggle("tpenemy", {
	Text = "strafe enemy";
	Default = false;
    Callback = function()
        updatefeature("tpenemy", "tpenemybind", function(state)
            getgenv().tpenemy = state;
        end);
    end;
}):AddKeyPicker("tpenemybind", {
	Text = "strafe enemy";
	Default = "T";
	NoUi = true;
    Callback = function()
        updatefeature("tpenemy", "tpenemybind", function(state)
            getgenv().tpenemy = state;
        end);
    end;
});
main:AddToggle("spectateneemy", {
	Text = "spectate enemy";
	Default = false;
	Callback = function()
		updatefeature("spectateneemy", "spectateneemybind", function(state)
			getgenv().spectateneemy = state;
		end);
	end;
}):AddKeyPicker("spectateneemybind", {
	Text = "spectate enemy";
	Default = "N";
	NoUi = true;
	Callback = function()
		updatefeature("spectateneemy", "spectateneemybind", function(state)
			getgenv().spectateneemy = state;
		end);
	end;
});
main:AddToggle("RageAutoParry", {
    Text = "rage auto parry";
    Default = false;
    Tooltip = "Bypasses all restrictions (range, angle, chance)";
    Callback = function(value)
        if not Classes.RageAutoParry then Classes.RageAutoParry = {} end;
        Classes.RageAutoParry.Value = value;
    end
});
main:AddDropdown("TPType", {
	Values = {"Behind", "Orbit", "Above", "Below", "Attach", "Random"};
	Default = "Behind";
	Multi = false;
	Text = "tp type";
});
main:AddSlider("TPRange", {
	Text = "tp range";
	Default = 5;
	Min = 1;
	Max = 15;
	Rounding = 0;
	Compact = true;
});
main:AddSlider("TPSpeed", {
	Text = "tp speed";
	Default = 10;
	Min = 1;
	Max = 60;
	Rounding = 0;
	Compact = true;
	Callback = function(Value)
		getgenv().tpspeed = Value;
	end;
});
main:AddSlider("predmultiplier", {
    Text = "multiplier",
    Default = 0.15,
    Min = 0,
    Max = 8,
    Rounding = 2,
    Compact = true,
    Callback = function(Value)
        getgenv().multiplier = Value
    end
})

main:AddSlider("predbase", {
    Text = "base",
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = true,
    Callback = function(Value)
        getgenv().base = Value
    end
})
local function waitUntilTimeout(signal, timeout)
	if not signal then
		return "Signal creation failed";
	end;
	local result = nil
    local timedOut = false
    local connection
    
    connection = signal:Connect(function(...)
        result = {...}
        connection:Disconnect()
    end)

    task.delay(timeout, function()
        if connection.Connected then
            timedOut = true
            connection:Disconnect()
        end
    end)

    repeat task.wait() until result or timedOut
    
    if timedOut then return "Timed out" end
	return unpack(result);
end;
gethitpart = LPH_JIT_MAX(function(character)
	local head = character:FindFirstChild("Head");
	if head then
		return head;
	end;
	local hrp = character:FindFirstChild("Torso");
	if hrp then
		return hrp;
	end;
end);
meleehitboxes = LPH_JIT_MAX(function(metadata)
    if not metadata then return nil; end;
    local success, result;
    local retries = 0;
    repeat
        success, result = pcall(function()
            return metadata.meleeHitboxes;
        end)
        if not success or result == nil then
            task.wait(0.05);
            retries = retries + 1;
        end;
    until (success and result) or retries > 10;
    return result;
end);
effectsjunk = workspace:WaitForChild("EffectsJunk")
map = workspace:FindFirstChild("Map")
processed = {}
targets = {}
function safeAdd(obj)
    if obj then
        targets[obj] = true
    end
end
safeAdd(effectsjunk:FindFirstChild("OpenBearTrap"))
safeAdd(effectsjunk:FindFirstChild("utility5Proxy"))
safeAdd(effectsjunk:FindFirstChild("utility7Proxy"))
safeAdd(effectsjunk:FindFirstChild("utility10Proxy"))
partCache = effectsjunk:FindFirstChild("PartCache")
if partCache then
    safeAdd(partCache:FindFirstChild("Kunai"))
    safeAdd(partCache:FindFirstChild("Arrow"))
    safeAdd(partCache:FindFirstChild("Shuriken"))
end
if map then
    safeAdd(map:FindFirstChild("PlacedClaymore"))
end
function shouldDisable(part)
    if part:GetAttribute("DamagePerSecond") then
        return true
    end
    for root in pairs(targets) do
        if root and part:IsDescendantOf(root) then
            return true
        end
    end
    return false
end
processPart = LPH_JIT_MAX(function(part)
	if getgenv().nut then
		if not part:IsA("BasePart") then return end
		if processed[part] then return end
		processed[part] = true
		if not shouldDisable(part) then return end
		part.CanCollide = false
		part.CanTouch = false
		part.CanQuery = false
		if part:GetAttribute("DamagePerSecond") then
			part:SetAttribute("DamagePerSecond", nil)
		end
	end
end);
for _, obj in ipairs(effectsjunk:GetDescendants()) do
    processPart(obj);
end;
if map then
    for _, obj in ipairs(map:GetDescendants()) do
        processPart(obj);
    end;
end;
effectsjunk.DescendantAdded:Connect(processPart)
if map then
    map.DescendantAdded:Connect(processPart);
end;
-- Combat Section
local KA_INTERVAL = 0.08;
local lastKATick = 0;

framework:BindToRenderStep(LPH_JIT_MAX(function() pcall(function()
    if not getgenv().killaura or KADebounce then
        return;
    end;
    local now = tick();
    if now - lastKATick < KA_INTERVAL then
        return;
    end;
    lastKATick = now;
    local weapon, metadata = framework:GetWeapon();
    if not weapon or not metadata then
        return;
    end;
    local itemConfig = metadata._itemConfig;
    local cooldown = itemConfig.cooldown;
    local threshold = 0.765;
    local buffer = (1 - threshold) * cooldown;
    local lastSlash = metadata._lastSlashTick or 0;
    if (now - lastSlash) < (cooldown - buffer) then
        return;
    end;
    local closest = framework:GetClosest(Classes.KillAuraRange.Value, true);
    if not closest or not next(closest) then
        return;
    end;
    KADebounce = true;
    if not Classes.PlayAnimation.Value then
        local hitboxes = meleehitboxes(metadata);
        if not hitboxes then
            KADebounce = false;
            return;
        end;
        local myChar = localplayer.Character;
        local myHRP = myChar and myChar:FindFirstChild("HumanoidRootPart");
        if not myHRP then
            KADebounce = false;
            return;
        end;
        local slashIndex = mathrandom(1, #itemConfig.slashMetadata);
        network:FireServer("MeleeSwing", weapon, slashIndex);
        metadata._lastSlashTick = now;
        task.defer(function()
            local ok, err = pcall(function()
                for i, hitbox in hitboxes do
                    for playerName, health in closest do
                        if health == 0 then
                            continue;
                        end;
                        local targetPlayer = players:FindFirstChild(playerName);
                        if not targetPlayer then
                            continue;
                        end;
                        local character = targetPlayer.Character;
                        if not character or not framework:Check(character) then
                            continue;
                        end;
                        local session = framework:GetSessionData(targetPlayer);
                        if not session or session:getState().parry.isParrying then
                            continue;
                        end;
                        local hitpart = gethitpart(character);
                        if not hitpart then
                            continue;
                        end;
                        network:FireServer(
                            "MeleeDamage",
                            weapon,
                            hitpart,
                            i,
                            hitpart.Position,
                            hitpart.CFrame:ToObjectSpace(CFrame.new(hitpart.Position)),
                            myHRP.CFrame.LookVector,
                            Vector3.zero,
                            Vector3.yAxis,
                            now - metadata._lastSlashTick
                        );
                        local baseDamage = itemConfig.damage or itemConfig.baseDamage or 0
                        local finalDamage = baseDamage
                        if hitpart and hitpart.Name == "Head" then
                            local mult = itemConfig.headshotMultiplier or 1.75
                            finalDamage = finalDamage * mult
                        end
                        OnHit(targetPlayer, hitpart, finalDamage, "Melee")
                        if Classes.KillAuraType.Value == "single person" then
                            break;
                        end;
                    end;
                    break;
                end;
            end)
            KADebounce = false;
        end);
    else
        if metadata:getShouldSlash() then
            metadata._activateSignal:Fire();
            local anim = metadata.animations.slashes[metadata._currSlashCount];
            local success, response = pcall(function()
                return waitUntilTimeout(anim:GetMarkerReachedSignal("startHitDetection"), 2);
            end);
            if success
                and response ~= "Timed out"
                and response ~= "Wait failed"
                and response ~= "Signal creation failed" then
                for i, v in metadata.meleeHitboxes do
                    v.HitboxStopTime = 1;
                    for playername, health in closest do
                        local targetPlayer = players:FindFirstChild(playername);
                        if targetPlayer
                            and targetPlayer.Character
                            and targetPlayer.Character:FindFirstChild("Head")
                            and health ~= 0
                            and framework:Check(targetPlayer.Character) then

                            if table.find(whitelist, playername) then
                                continue;
                            end;
                            local character = targetPlayer.Character;
                            local data = framework:GetSessionData(targetPlayer);
                            if data and not data:getState().parry.isParrying then
                                local head = character:FindFirstChild("Head");
                                local targetHum = character:FindFirstChildOfClass("Humanoid");
                                if head and targetHum then
                                    v.OnHit:Fire(
                                        head,
                                        targetHum,
                                        {
                                            Distance = 1,
                                            Instance = head,
                                            Material = Enum.Material.SmoothPlastic,
                                            Position = head.Position,
                                            Normal = Vector3.yAxis,
                                        },
                                        head.Position,
                                        head.Position
                                    );
									local baseDamage = itemConfig.damage or itemConfig.baseDamage or 0
									local finalDamage = baseDamage
									if head.Name == "Head" then
    									local mult = itemConfig.headshotMultiplier or 1.75
    									finalDamage = finalDamage * mult
									end
									OnHit(targetPlayer, head, finalDamage, "Melee")
                                end;
                                if Classes.KillAuraType.Value == "single person" then
                                    break;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        KADebounce = false;
    end;
end) end));
framework:BindToRenderStep(LPH_JIT_MAX(function()
	-- early exit if no feature needs this loop
	if not getgenv().autoequip and not getgenv().BeartrapEnemy and not getgenv().AutoAttachC4 and not getgenv().AutoDetonateC4 then
		return;
	end;
	if not weapon and getgenv().autoequip then
		local Character = localplayer.Character;
		for _, v in pairs(localplayer.Backpack:GetChildren()) do
			if v:IsA("Tool") and (v:FindFirstChild("Hitboxes") or v:GetAttribute("IsRangedWeapon")) then
				Character.Humanoid:EquipTool(v);
				break;
			end;
		end;
	end;
	local Character = localplayer.Character;
	if Character and not framework:InMenu(localplayer) then
		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart");
		if not HumanoidRootPart then return end;
		
		local Closest = framework:GetClosest(15, true);
		local CurrentTool = Character:FindFirstChildOfClass("Tool");
		if next(Closest) then
			local TargetPlayer = players:FindFirstChild(next(Closest));
			if TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
				if getgenv().BeartrapEnemy and CurrentTool and CurrentTool.Name == "Bear Trap" then
						local targetHRP = TargetPlayer.Character:FindFirstChild("HumanoidRootPart")
						if targetHRP then
							network:InvokeServer(
								"PlaceBearTrap",
								CurrentTool,
								targetHRP.CFrame * cframenew(0, -1, 0)
							);
						end;
				end;
				if getgenv().AutoAttachC4 and CurrentTool and CurrentTool.Name == "C4" then
					local Head = TargetPlayer.Character:FindFirstChild("Head");
					if Head then
						local Distance = (HumanoidRootPart.Position - Head.Position).Magnitude;
						
						if Distance <= 15 then
							local finalPos = Head.Position + (Head.Velocity * (Distance / 100));
							
							pcall(function()
								network:InvokeServer("ReplicateThrowable", CurrentTool, finalPos, finalPos);
							end);
						end;
					end;
				end;
			end;
		end;
		if getgenv().AutoDetonateC4 and CurrentTool and CurrentTool.Name == "C4" then
			pcall(function()
				network:FireServer("DetonateC4", CurrentTool);
			end);
		end;
	end;
end));
lastFastRespawn = 0
lastLoopSpawn = 0
lastAR = 0
FASTRESPAWN_DELAY = 0.5
LOOPSPAWN_DELAY = 1
AR_DELAY = 0.5
runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
    local now = tick()
    if getgenv().fastrespawn and humanoid.Health == 0 then
        if now - lastFastRespawn >= FASTRESPAWN_DELAY then
            lastFastRespawn = now
            network:FireServer("StartFastRespawn")
            network:InvokeServer("CompleteFastRespawn")
        end
    end
    if getgenv().loopspawn and framework:InMenu(localplayer) then
        if now - lastLoopSpawn >= LOOPSPAWN_DELAY then
            lastLoopSpawn = now
            network:InvokeServer("SpawnCharacter")
        end
    end
    if getgenv().ar then
        local store = modules.Name["DataHandler"].getSessionDataRoduxStoreForPlayer(LocalPlayer)
        if store and store:getState().down.isDowned then
            if now - lastAR >= AR_DELAY then
                lastAR = now
                network:FireServer("SelfReviveStart")
                network:FireServer("SelfRevive")
            end
        end
    end
    local weapon, metadata = framework:GetWeapon();
    if weapon and metadata then
        if getgenv().fakeswing and not Debounce then
            Debounce = true;
            metadata.animations.slashes[mathrandom(1, #metadata.animations.slashes)]:Play();
            task.delay(0.5, function()
                Debounce = false;
            end);
        end;
    end;
end));
framework:BindToRenderStep(LPH_JIT_MAX(function()
    if not getgenv().autostompshove and not getgenv().autoglory then
        return;
    end;
    if getgenv().autostompshove then
        local character = localplayer.Character
        local closest = framework:GetClosest(getgenv().stompshoverange, true)
        if character and character:FindFirstChild("Stomp") and closest and next(closest) then
            local metadata = modules.Name["MeleeWeaponClient"].getObj(character.Stomp)
            if metadata and metadata._cooldownProgressTimer:getValue() > 0.75 then
                local slashData = metadata._itemConfig.slashMetadata[metadata._currSlashCount]
                local hitbox = slashData.getHitboxInfo(metadata.tool)
                local hitboxes = metadata:getHitboxesToUseFromHitboxParts(hitbox.hitboxPartsToUse)
                for i, v in hitboxes do
                    if not v.HitboxPendingRemoval then
                        for playername, health in closest do
                            local targetPlayer = players:FindFirstChild(playername)
                            local data = targetPlayer and framework:GetSessionData(targetPlayer)
                            local state = data and data:getState()
                            if
                                targetPlayer
                                and targetPlayer.Character
                                and targetPlayer.Character:FindFirstChild("Head")
                                and targetPlayer.Character:FindFirstChild("Humanoid")
                                and health ~= 0
                                and (
                                    health <= 15
                                    or (state and state.parry.isParried)
                                    or targetPlayer.Character.Humanoid:GetAttribute("IsRagdolledServer")
                                )
                            then
                                setthreadidentity(2)
                                metadata:slash()
                                setthreadidentity(8)
                                local head = targetPlayer.Character:FindFirstChild("Head")
                                local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                                if head and targetHumanoid then
                                    v.OnHit:Fire(head, targetHumanoid, {
                                        Distance = 1,
                                        Instance = head,
                                        Material = Enum.Material.SmoothPlastic,
                                        Position = head.Position,
                                        Normal = Vector3.yAxis,
                                    }, head.Position, head.Position)
                                end
                            end
                        end
                        break
                    end
                end
            end
        end
    end
    if getgenv().autoglory then
        if getgenv().glorydelay and getgenv().glorydelay > 0 then task.wait(getgenv().glorydelay) end
        local closest = framework:GetClosest(getgenv().gloryrange, true)
        local tool = framework:GetWeapon()
        if tool and closest and next(closest) then
            local targetPlayer = players:FindFirstChild(next(closest))
            if
                targetPlayer
                and targetPlayer.Character
                and targetPlayer.Character:FindFirstChild("Humanoid")
                and targetPlayer.Character.Humanoid.Health <= 20
            then
                network:FireServer("StartGloryKill", tool, targetPlayer.Character, cframenew(), vector3new())
            end
        end
    end
end), nil, Enum.RenderPriority.Character);
local StartSnowveilEffect = LPH_JIT_MAX(function()
    if SnowveilActive then return end
    
    local char = localplayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    
    SnowveilActive = true
    library:Notify("S N O W V E I L initiated.", 3)
    
    local emotionalEffects = {}
    local function CreateEffect(className, name, props)
        local effect = Instance.new(className)
        effect.Name = "Snowveil_" .. name
        for k, v in pairs(props) do effect[k] = v end
        effect.Parent = game:GetService("Lighting")
        table.insert(emotionalEffects, effect)
        return effect
    end

    local success, err = pcall(function()
        CreateEffect("ColorCorrectionEffect", "BW", {Saturation = -1, Contrast = 0.3})
        CreateEffect("BlurEffect", "Blur", {Size = 8})
        
        local oldTime = game:GetService("Lighting").ClockTime
        game:GetService("Lighting").ClockTime = 0
        
        local staticSound = Instance.new("Sound")
        staticSound.Name = "SnowveilStatic"
        staticSound.SoundId = "rbxassetid://135167757310626"
        staticSound.Looped = false
        staticSound.Volume = 0.8
        staticSound.Parent = game:GetService("SoundService")
        staticSound:Play()
        table.insert(emotionalEffects, staticSound)
        
        root.Anchored = true
        
        local userId = 5251233245

        local npc = game.Players:CreateHumanoidModelFromUserId(userId)
        npc.Name = "snowveil"
        npc.Parent = workspace
        
        local noclipConn
        noclipConn = runservice.Stepped:Connect(LPH_JIT_MAX(function()
            if not SnowveilActive then noclipConn:Disconnect() return end
            if npc then
                for _, v in pairs(npc:GetDescendants()) do
                    if v:IsA("BasePart") then v.CanCollide = false end
                end
            end
            if dog then
                for _, v in pairs(dog:GetDescendants()) do
                    if v:IsA("BasePart") then v.CanCollide = false end
                end
            end
        end))
        table.insert(emotionalEffects, noclipConn)

        npc:PivotTo(root.CFrame * cframenew(0, 0, 30))

        local dog = nil
        local objects = game:GetObjects("rbxassetid://17105403700")
        if objects and #objects > 0 then
            dog = objects[1]
            dog.Name = "Snowveil_Dog"
            dog.Parent = workspace
            
            if dog:IsA("Model") and dog.ScaleTo then
                dog:ScaleTo(3.15)
            else
                for _, v in pairs(dog:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.Size = v.Size * 3.15
                    end
                end
            end
            
            for _, v in pairs(dog:GetDescendants()) do
                if v:IsA("BasePart") then 
                    v.Anchored = true 
                    v.CanCollide = false
                end
            end
            
            dog:PivotTo(root.CFrame * cframenew(3.5, -1.1, 0))
        end
        
        if npc and dog then 
            local npcHum = npc:FindFirstChildOfClass("Humanoid")
            local npcRoot = npc:FindFirstChild("HumanoidRootPart")
            if npcHum then npcHum.WalkSpeed = 30 end
            
            task.wait(0.6)
            
            if npcHum then
                npcHum:MoveTo(dog:GetPivot().Position)
                
                local startTime = tick()
                while (npcRoot.Position - dog:GetPivot().Position).Magnitude > 5 and tick() - startTime < 3 do
                    task.wait()
                end
            end
            
            pcall(function()
                local grabPart = npc:FindFirstChild("Right Arm") or npc:FindFirstChild("RightHand") or npcRoot
                
                dog:PivotTo(grabPart.CFrame * cframenew(0, -1, 0))
                
                for _, v in pairs(dog:GetDescendants()) do
                    if v:IsA("BasePart") then v.Anchored = false end
                end
                
                dog.Parent = npc
                local weld = Instance.new("WeldConstraint")
                weld.Part0 = grabPart
                weld.Part1 = dog.PrimaryPart or dog:FindFirstChildOfClass("BasePart")
                weld.Parent = dog
            end)
            
            task.wait(0.3)
            
            if npcHum then
                npcHum:MoveTo(root.Position + root.CFrame.LookVector * -150)
                task.wait(1.5)
            end
        end
        
        if npc then npc:Destroy() end
        if dog then dog:Destroy() end
        for _, obj in pairs(emotionalEffects) do 
            if typeof(obj) == "RBXScriptConnection" then
                pcall(function() obj:Disconnect() end)
            elseif typeof(obj) == "Instance" then
                pcall(function() obj:Destroy() end)
            end
        end
        if oldTime then game:GetService("Lighting").ClockTime = oldTime end
    end)
    
    if not success then
        warn("Snowveil Error: " .. tostring(err))
        for _, obj in pairs(emotionalEffects) do 
            if typeof(obj) == "RBXScriptConnection" then
                pcall(function() obj:Disconnect() end)
            elseif typeof(obj) == "Instance" then
                pcall(function() obj:Destroy() end)
            end
        end
    end
    
    root.Anchored = false
    SnowveilActive = false
    library:Notify("S N O W V E I L completed.", 2)
end);
local angle = 0;
local orbitCF = cframenew();
local Connection;
local StickTarget;
CurrentTarget = nil;
Connection = runservice.Heartbeat:Connect(LPH_JIT_MAX(function(dt)
	if not Active then
		return;
	end;
	local tpSpeedVal = (Classes.TPSpeed and Classes.TPSpeed.Value) or (getgenv().tpspeed) or 10;
	angle = (angle + dt * tpSpeedVal) % (2 * math.pi);
	orbitCF = cframenew(mathcos(angle) * Classes.TPRange.Value, 0, math.sin(angle) * Classes.TPRange.Value);
end));
serverposition("heartbeat", "CombatTeleport", LPH_JIT_MAX(function(realCF)
	if getgenv().voidenabled then return end
	local Character = localplayer.Character
	if not Character then return end
	local hrp = Character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end
	local target = CurrentTarget
	if not target then return end
	local targetChar = target.Character
	if not targetChar then return end
	local targetHRP = targetChar:FindFirstChild("HumanoidRootPart")
	if not targetHRP then return end
	if not getgenv().tpenemy then return end
	local targetVel = targetHRP.Velocity or Vector3.new()
	local multiplier = 0
	local base = 0
	local predictedCF = targetHRP.CFrame
	sethiddenproperty(hrp, "PhysicsRepRootPart", targetHRP)
	local tpSpeedVal = (Options.TPSpeed and Options.TPSpeed.Value) or getgenv().tpspeed or 10
	local Type = Options.TPType.Value
	local look = -targetHRP.CFrame.LookVector
	local range = Options.TPRange.Value
	if Type == "Behind" then
		return CFrame.new(
			predictedCF.Position + look * range,
			predictedCF.Position
		)
	elseif Type == "Orbit" then
		local pos = (CFrame.new(predictedCF.Position) * orbitCF).Position
		return CFrame.new(pos, predictedCF.Position)
	elseif Type == "Above" then
		local pos = predictedCF.Position + Vector3.new(0, range, 0)
		return CFrame.new(pos, predictedCF.Position)
	elseif Type == "Below" then
		local pos = predictedCF.Position + Vector3.new(0, -range, 0)
		return CFrame.new(pos, predictedCF.Position)
	elseif Type == "Attach" then
		return CFrame.new(
			predictedCF.Position,
			predictedCF.Position + look
		)
	else
		local X, Y, Z =
			math.random(-range, range),
			math.random(-range, range),
			math.random(-range, range)
		local factor = tpSpeedVal / 10
		local XA, YA, ZA =
			math.random(-180,180) * factor,
			math.random(-180,180) * factor,
			math.random(-180,180) * factor
		local pos =
			(CFrame.new(predictedCF.Position)
			* CFrame.new(X, Y, Z)
			* CFrame.Angles(math.rad(XA), math.rad(YA), math.rad(ZA))).Position
		return CFrame.new(pos, predictedCF.Position)
	end
end), 16)
function canTeleportToTarget(player)
	if not player then return false end
	if player.Parent ~= players then return false end
	local char = player.Character
	if not char then return false end
	local hum = char:FindFirstChildOfClass("Humanoid")
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hum or not hrp then return false end
	if hum.Health <= 0 then return false end
	if framework:InMenu(player) then return false end
	return true
end
runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
    local Character = localplayer.Character
    if not Character then
        CurrentTarget = nil
        setrunning("CombatTeleport", false)
        return
    end
    local CameraSubject
    if Character:GetAttribute("CameraSubject") then
        CameraSubject = Character:FindFirstChild(Character:GetAttribute("CameraSubject"))
    else
        CameraSubject = Character:FindFirstChildOfClass("Humanoid")
    end
    if not getgenv().stick and not getgenv().targeting_player then
        StickTarget = nil
        getgenv().stickTarget = nil
    end
    
    local closestPlayer = nil
    local needsTarget = getgenv().killaura or getgenv().tpenemy or getgenv().stick or getgenv().targeting_player or getgenv().spectateneemy
    if needsTarget then
        local closestDist = math.huge
        local mousePos = userinputservice:GetMouseLocation()

        if (getgenv().stick or getgenv().targeting_player) and StickTarget then
            closestPlayer = StickTarget
        elseif getgenv().targeting_player then
            closestPlayer = SelectedPlayer
        else
            for player, _ in pairs(getgenv().cachedplayers) do
                if player ~= localplayer
                    and not whitelisted(player)
                    and player.Character
                    and player.Character:FindFirstChild("HumanoidRootPart")
                    and player.Character:FindFirstChildOfClass("Humanoid").Health > 0
                    and not framework:InMenu(player) then

                    local hrp = player.Character.HumanoidRootPart
                    local screenPos, onScreen = camera:WorldToViewportPoint(hrp.Position)

                    if onScreen then
                        local dist = (vector2new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                        if dist < closestDist then
                            closestDist = dist
                            closestPlayer = player
                        end
                    end
                end
            end
            
            if getgenv().stick and closestPlayer then
                StickTarget = closestPlayer
                getgenv().stickTarget = closestPlayer
            end
        end
    end
    CurrentTarget = closestPlayer


    if CurrentTarget and canTeleportToTarget(CurrentTarget) and not getgenv().voidenabled and not whitelisted(CurrentTarget) then
        setrunning("CombatTeleport", true)
    else
        setrunning("CombatTeleport", false)
    end

    if getgenv().spectateneemy and CurrentTarget and not whitelisted(CurrentTarget) and CurrentTarget.Character.Humanoid.Health > 0 and not framework:InMenu(CurrentTarget) then
        local targetHumanoid = CurrentTarget.Character:FindFirstChildOfClass("Humanoid")
        if targetHumanoid then
            camera.CameraSubject = targetHumanoid
        else
            camera.CameraSubject = CameraSubject
        end
    else
        camera.CameraSubject = CameraSubject
    end
end))
local function Parry(metadata)
    local apdelay = math.round(Classes.APDelay.Value or 0);
    if apdelay > 0 then
        task.wait(apdelay);
    end;

    if Classes.APType.Value == "remote" then
        network:FireServer("Parry");
    elseif Classes.APType.Value == "both" then
        network:FireServer("Parry");
        keypress(0x46);
        keyrelease(0x46);
    else
        keypress(0x46);
        keyrelease(0x46);
    end;
end;
local scraped = {};
local function getevent(animID)
    if scraped[animID] then
        return scraped[animID];
    end;
    local markers = {};
    local ks;
    local s, _ = pcall(function()
        ks = KeyframeSequenceProvider:GetKeyframeSequenceAsync(animID);
    end);
    if s and ks then
        local function recurse(parent)
            for _, child in pairs(parent:GetChildren()) do
                if child:IsA("KeyframeMarker") then
                    local kf = child:FindFirstAncestor("Keyframe");
                    if kf then
                        markers[child.Name] = kf.Time;
                    end;
                end;
                if #child:GetChildren() > 0 then
                    recurse(child);
                end;
            end;
        end;
        recurse(ks);
        scraped[animID] = markers;
        return markers;
    end;
    return nil;
end;
-- Auto Parry --
local blacklisted_IDS = {
    ["106649093705106"] = true,
    ["9745796833"] = true,
    ["9745345487"] = true,
    ["0"] = true,
    ["9745344365"] = true
};

local slashes = {};
local parries = {};

for _, obj in pairs(getgc(true)) do
    if type(obj) == "table"
        and rawget(obj, "slashMetadata")
        and rawget(obj, "parryMetadata") ~= nil
    then
        if obj.slashMetadata then
            for _, meta in ipairs(obj.slashMetadata) do
                if meta.animation and meta.animation.AnimationId then
                    local id = string.gsub(meta.animation.AnimationId, "rbxassetid://", "");
                    if not blacklisted_IDS[id] then
                        slashes[id] = "Slash";
                    end;
                end;
            end;
        end;

        if obj.parryMetadata then
            for _, meta in ipairs(obj.parryMetadata) do
                if meta.animation and meta.animation.AnimationId then
                    local id = string.gsub(meta.animation.AnimationId, "rbxassetid://", "");
                    if not blacklisted_IDS[id] then
                        parries[id] = "Parry";
                    end;
                end;
            end;
        end;
    end
end;

local blacklist = {
    "rbxassetid://106649093705106",
    "rbxassetid://6423003415",
   "rbxassetid://101463478179793",
};

local HumanoidToParry = {};
local ParryingCharacters = {};
if PlayerCharacters then
    for i, v in pairs(PlayerCharacters:GetChildren()) do
        if v ~= localplayer.Character and v:FindFirstChildOfClass("Humanoid") then
            local Player = players:GetPlayerFromCharacter(v);
            if not Player then
                continue;
            end;
            local humanoid = v:FindFirstChildOfClass("Humanoid");
            table.insert(HumanoidToParry, humanoid);
        end;
    end;
    PlayerCharacters.ChildAdded:Connect(function(char)
        if char ~= localplayer.Character and char:FindFirstChildOfClass("Humanoid") then
            local Player = players:GetPlayerFromCharacter(char);
            if not Player then
                return;
            end;
            local humanoid = char:FindFirstChildOfClass("Humanoid");
            table.insert(HumanoidToParry, humanoid);
        end;
    end);
end;
local playSoundOld;
local getIsHittableCharacterPartOld;
if not Toggles.WhitelistFriends then
	Toggles.WhitelistFriends = { Value = false };
end;
do
    parrysection2:AddToggle("AutoParry", {
        Text = "auto parry";
        Default = false;
        Tooltip = "Uhhh what auto parry meaning?";
        Callback = function(value)
            if not Classes.AutoParry then Classes.AutoParry = {} end;
            Classes.AutoParry.Value = value;
        end;
    });
    parrysection2:AddToggle("RandomChance", {
        Text = "random chance";
        Default = false;
        Callback = function(value)
            if not Classes.RandomChance then Classes.RandomChance = {} end;
            Classes.RandomChance.Value = value;
        end;
    });
    parrysection2:AddToggle("SmartCheck", {
        Text = "smartcheck";
        Default = false;
        Tooltip = "predicts hitbox time creation";
        Callback = function(value)
            if not Classes.SmartCheck then Classes.SmartCheck = {} end;
            Classes.SmartCheck.Value = value;
        end;
    });
    parrysection2:AddToggle("LookCheck", {
        Text = "check if looking";
        Default = false;
        Callback = function(value)
            if not Classes.LookCheck then Classes.LookCheck = {} end;
            Classes.LookCheck.Value = value;
        end;
    });
    parrysection2:AddDropdown("APCheck", {
        Text = "check method";
        Default = "sounds";
        Values = {"sounds"};
        Callback = function(value)
            if not Classes.APCheck then Classes.APCheck = {} end;
            Classes.APCheck.Value = value;
        end;
    });
    parrysection2:AddDropdown("APType", {
        Text = "ap type";
        Default = "remote";
        Values = {"remote", "keypress", "both"};
        Callback = function(value)
            if not Classes.APType then Classes.APType = {} end;
            Classes.APType.Value = value;
        end;
    });
    parrysection2:AddSlider("APDelay", {
        Text = "delay";
        Default = 0;
        Min = 0;
        Max = 1;
        Rounding = 1;
		Compact = true;
        Suffix = " seconds";
        Callback = function(value)
            if not Classes.APDelay then Classes.APDelay = {} end;
            Classes.APDelay.Value = value;
        end;
    });
    parrysection2:AddSlider("APRange", {
        Text = "range";
        Default = 15;
        Min = 1;
        Max = 20;
        Rounding = 0;
		Compact = true;
        Suffix = " studs";
        Callback = function(value)
            if not Classes.APRange then Classes.APRange = {} end;
            Classes.APRange.Value = value;
        end;
    });
    parrysection2:AddSlider("APChance", {
        Text = "auto parry chance";
        Default = 100;
        Min = 1;
        Max = 100;
        Rounding = 0;
		Compact = true;
        Suffix = "%";
        Callback = function(value)
            if not Classes.APChance then Classes.APChance = {} end;
            Classes.APChance.Value = value;
        end;
    });
    parrysection2:AddSlider("APAngle", {
        Text = "look angle";
        Default = 45;
        Min = 1;
        Max = 180;
        Rounding = 0;
		Compact = true;
        Suffix = " degrees";
        Callback = function(value)
            if not Classes.APAngle then Classes.APAngle = {} end;
            Classes.APAngle.Value = value;
        end;
    });
    parrysection2:AddSlider("Threshold", {
        Text = "marker threshold";
        Default = 0.3;
        Min = 0;
        Max = 1;
        Rounding = 1;
		Compact = true;
        Suffix = " seconds";
        Callback = function(value)
            if not Classes.Threshold then Classes.Threshold = {} end;
            Classes.Threshold.Value = value;
        end;
    });
    parrysection:AddToggle("AntiParry", {
        Text = "anti parry";
        Default = false;
        Callback = function(value)
            if not Classes.AntiParry then Classes.AntiParry = {} end;
            Classes.AntiParry.Value = value;
        end;
    });
end;
parrysection:AddToggle("fakeswing", {
	Text = "fake swing";
	Default = false;
	Callback = function(v)
		getgenv().fakeswing = v;
	end;
});
parrysection:AddToggle("swingsound", {
	Text = "play swing sound";
	Default = false;
	Tooltip = "use keybind";
	Callback = function(v)
		getgenv().swingsound = v;
	end;
}):AddKeyPicker("swingsoundkey", {
	Text = "swing sound";
	Default = "MB2";
	NoUI = true;
});
userinputservice.InputBegan:Connect(LPH_JIT_MAX(function(i, gp)
	if gp then return; end;
	if getgenv().swingsound and (i.KeyCode == Options.swingsoundkey.Value or i.UserInputType == Options.swingsoundkey.Value) then
		local weapon = framework:GetWeapon();
		if weapon then
			network:FireServer("MeleeSwing", weapon, mathrandom(1, 3));
		end;
	end;
end));
parrysection:AddToggle("AutoEquip", {
	Text = "auto equip";
	Default = false;
	Callback = function(v)
		getgenv().autoequip = v;
	end;
});
parrysection:AddToggle("VoidOnParry", {
	Text = "void on parry stun";
	Default = false;
	Callback = function(v)
		getgenv().voidonparry = v;
	end;
});
if not Classes.AutoParry then Classes.AutoParry = { Value = false } end;
if not Classes.RandomChance then Classes.RandomChance = { Value = false } end;
if not Classes.SmartCheck then Classes.SmartCheck = { Value = false } end;
if not Classes.LookCheck then Classes.LookCheck = { Value = false } end;
if not Classes.APCheck then Classes.APCheck = { Value = "sounds" } end;
if not Classes.APType then Classes.APType = { Value = "remote" } end;
if not Classes.APDelay then Classes.APDelay = { Value = 0 } end;
if not Classes.APRange then Classes.APRange = { Value = 15 } end;
if not Classes.APChance then Classes.APChance = { Value = 100 } end;
if not Classes.APAngle then Classes.APAngle = { Value = 45 } end;
if not Classes.Threshold then Classes.Threshold = { Value = 0.3 } end;
if not Classes.AntiParry then Classes.AntiParry = { Value = false } end;
if modules.Name["SoundHandler"] and modules.Name["SoundHandler"].playSound then
    playSoundOld = modules.Name["SoundHandler"].playSound;
    modules.Name["SoundHandler"].playSound = LPH_JIT_MAX(function(...)
        local args = {...};
        local sound = args[1];
        if not sound or not playSoundOld then return playSoundOld and playSoundOld(...) or nil; end;

        if typeof(sound) == "table" then
            pcall(function()
                local isRage = Classes.RageAutoParry and Classes.RageAutoParry.Value
                if (Classes.AutoParry.Value or isRage) and Classes.APCheck.Value == "sounds" then
                    local sObj = sound.soundObject
                    local sName = sObj and sObj.Name or ""
                    local sParent = sound.parent

                    if sParent and typeof(sParent) == "Instance" then
                        -- Check if sound indicates an attack
                        local isAttack = false
                        if sParent.Name:match("Hitbox") then
                            isAttack = true
                        elseif sName:match("Slash") or sName:match("Swing") or sName:match("Attack") or sName:match("Blade") then
                            isAttack = true
                        end

                        if isAttack then
                            -- Attempt to find the character who played the sound
                            local Other = sParent:FindFirstAncestorOfClass("Model")
                            -- Sometimes the Model is the Tool, go up one more
                            if Other and Other:IsA("Tool") then
                                Other = Other.Parent
                            end
                            -- Verify it's a character
                            if Other and Other:FindFirstChild("HumanoidRootPart") and Other:FindFirstChild("Humanoid") then
                                local OtherRoot = Other.HumanoidRootPart
                                
                                local range = isRage and 25 or Classes.APRange.Value
                                local chance = isRage and true or framework:Chance(Classes.RandomChance.Value and mathrandom(1, 100) or Classes.APChance.Value)

                                if Other ~= localplayer.Character and framework:IsPartClose(OtherRoot, range) 
                                   and chance 
                                then
                                    local CanParry = false;
                                    if not isRage and Classes.LookCheck.Value then
                                        local BadPlrPos = Other:GetPivot().Position;
                                        local head = localplayer.Character and localplayer.Character:FindFirstChild("Head")
                                        if head then
                                            local BadPlrDirection = (BadPlrPos - head.Position).Unit;
                                            local ToCheck = head.CFrame.LookVector;

                                            if math.deg(math.acos(BadPlrDirection:Dot(ToCheck))) <= Classes.APAngle.Value then
                                                CanParry = true;
                                            end;
                                        end;
                                    else
                                        CanParry = true;
                                    end;

                                    if CanParry then
                                        local Character = localplayer.Character;
                                        if Character then
                                            local LocalRoot = Character:FindFirstChild("HumanoidRootPart");
                                            if LocalRoot then
                                                 -- Re-check distance to be sure
                                                local Distance = (OtherRoot.Position - LocalRoot.Position).Magnitude;
                                                if Distance <= range then
                                                    local Weapon, Metadata = framework:GetWeapon();
                                                    if Weapon and Metadata then
                                                        local parryCount = isRage and 3 or 1
                                                        for _ = 1, parryCount do
                                                            taskspawn(Parry, Metadata);
                                                        end
                                                    end
                                                end;
                                            end;
                                        end;
                                    end;
                                end
                            end
                        end
                    end
                end;
                if sound.soundObject and sound.soundObject.Name == "Parry" and typeof(sound.parent) == "Instance" then
                    local parryShield = sound.parent:FindFirstAncestorOfClass("Model");
                    local Character = parryShield and parryShield.Parent;

                    if parryShield and parryShield:GetAttribute("ParryShieldId") and Character then
                        table.insert(ParryingCharacters, Character);

                        if modules.Name["ParryConstants"] and modules.Name["ParryConstants"].PARRY_DURATION_IN_SECONDS then
                            task.delay(modules.Name["ParryConstants"].PARRY_DURATION_IN_SECONDS, function()
                                table.remove(ParryingCharacters, table.find(ParryingCharacters, Character));
                            end);
                        end;
                    end;
                end;
            end);
        end;

        return playSoundOld(...);
    end);
end;
framework:BindToRenderStep(LPH_JIT_MAX(function()
    if not Classes.AutoParry.Value then
        return;
    end;
    if Classes.APCheck.Value == "sounds" then
        return;
    end;
    local Character = localplayer.Character;
    if not Character then return; end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart");
    if not HumanoidRootPart then return; end
    local tool, metadata = framework:GetWeapon();
    if not tool or not metadata then return; end
    for _, humanoid in pairs(HumanoidToParry) do
        local rootPart = humanoid.RootPart;
        if not rootPart then continue; end
        local Distance = (HumanoidRootPart.Position - rootPart.Position).Magnitude;
        if Distance > Classes.APRange.Value then
            continue;
        end
        local animator = humanoid:FindFirstChildOfClass("Animator");
        if not animator then continue; end
        local animations = animator:GetPlayingAnimationTracks();
        for _, anim in pairs(animations) do
            local animObj = anim.Animation;
            if not animObj or not animObj.AnimationId then
                continue;
            end
            local animId = string.gsub(animObj.AnimationId, "rbxassetid://", "");
            if not slashes[animId] then
                continue;
            end
            if animObj.Name:find("^Finish%w*") then
                continue;
            end
            local markers = getevent(animObj.AnimationId);
            if not markers then
                continue;
            end
            local hitMarker = markers.startHitDetection;
            if not hitMarker then
                continue;
            end
            if anim.TimePosition >= math.clamp(hitMarker - Classes.Threshold.Value, 0, math.huge)
                and anim.TimePosition <= hitMarker
                and framework:Chance(Classes.RandomChance.Value and mathrandom(1, 100) or Classes.APChance.Value)
            then
                local CanParry = false;
                if Classes.LookCheck.Value then
                    local BadPlrPos = rootPart:GetPivot().Position;
                    local head = Character:FindFirstChild("Head")
                    if head then
                        local BadPlrDirection = (BadPlrPos - head.Position).Unit;
                        local ToCheck = head.CFrame.LookVector;

                        if math.deg(math.acos(BadPlrDirection:Dot(ToCheck))) <= Classes.APAngle.Value then
                            CanParry = true;
                        end;
                    end;
                else
                    CanParry = true;
                end
                if CanParry then
                    taskspawn(Parry, metadata);
                end
            end
        end
    end
end));
-- Anti Parry --
if modules.Name["CharacterUtil"] and modules.Name["CharacterUtil"].getIsHittableCharacterPart then
	getIsHittableCharacterPartOld = modules.Name["CharacterUtil"].getIsHittableCharacterPart;
	modules.Name["CharacterUtil"].getIsHittableCharacterPart = LPH_JIT_MAX(function(part, unused)
		if Classes.AntiParry.Value and part and part.Parent then
			local character = part.Parent;
			local Rodux = modules.Name["RoduxStore"];
			if Rodux and Rodux.store then
				local state = Rodux.store:getState();
				if state and state.parry and state.parry.isParrying then
					return;
				end;
			end;
			local humanoid = character:FindFirstChildOfClass("Humanoid");
			if humanoid then
				local animator = humanoid:FindFirstChildOfClass("Animator");
				if animator then
					local playingAnimations = animator:GetPlayingAnimationTracks();
					for _, animTrack in pairs(playingAnimations) do
						local animObj = animTrack.Animation;
						if animObj and animObj.AnimationId then
							local animId = string.gsub(animObj.AnimationId, "rbxassetid://", "");
							if parries[animId] then
								return;
							end;
						end;
					end;
				end;
			end;
			if not framework:Check(character) then
				return;
			end;
		end;
		return getIsHittableCharacterPartOld(part, unused);
	end);
end;
-- character
charactertab:AddToggle("fly", {
    Text = "fly";
    Default = false;
    Callback = function()
        updatefeature("fly", "flybind", function(state)
            getgenv().flyenabled = state;
        end);
    end;
}):AddKeyPicker("flybind", {
    Text = "fly";
    Default = "X";
    Mode = "Toggle";
    Callback = function()
        updatefeature("fly", "flybind", function(state)
            getgenv().flyenabled = state;
        end);
    end;
});
charactertab:AddToggle("velocity", {
    Text = "velocity",
    Default = false,
    Callback = function()
        updatefeature("velocity", "velocitybind", function(state)
            getgenv().velocityenabled = state
        end)
    end
}):AddKeyPicker("velocitybind", {
    Text = "velocity";
    Default = "C";
    Mode = "Toggle";
    Callback = function()
        updatefeature("velocity", "velocitybind", function(state)
            getgenv().velocityenabled = state;
        end);
    end;
});
do
	local applied = false;
	charactertab:AddToggle("walkspeed", {
	    Text = "walkspeed";
	    Default = false;
	    Callback = function(enabled)
	        getgenv().walkspeedenabled = enabled;
	        local wshandler = modules.Name["WalkSpeedHandlerClient"].getValueContainer();
	        if not wshandler then
	            return;
	        end;
	        local delta = (getgenv().walkspeed or 16) - 16;
	        if enabled and not applied then
	            applied = true;
	            wshandler:addBaseValueAdditive(delta);
	        elseif not enabled and applied then
	            applied = false;
	            wshandler:removeBaseValueAdditive(delta);
	        end;
	    end;
	});

	local jpconn;
	charactertab:AddToggle("jumppower", {
	    Text = "jump power",
	    Default = false;
	    Callback = function(enabled)
	        getgenv().jumppowerenabled = enabled;
	        if jpconn then
	            jpconn:Disconnect();
	            jpconn = nil;
	        end;
	        if enabled then
	            jpconn = runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
	                if humanoid and getgenv().jumppower then
	                    humanoid.JumpPower = getgenv().jumppower;
	                end;
	            end));
	        else
	            if humanoid then
	                humanoid.JumpPower = 50;
	            end;
	        end;
	    end;
	});

	charactertab:AddToggle('NoAnimations', {
	    Text = 'no animations',
	    Default = false,
	    Tooltip = 'stops all character animations',
	    Callback = function()
	        if Toggles.NoAnimations.Value then
	            taskspawn(LPH_JIT_MAX(function()
	                while Toggles.NoAnimations.Value do
	                    if character and humanoid then
	                        for i, v in humanoid:GetPlayingAnimationTracks() do
	                            if v.Animation ~= spinAnim then
	                                v:Stop()
	                            end
	                        end
	                    end
	                    runservice.Heartbeat:Wait()
	                end
	            end))
	        end
	    end
	});

	charactertab:AddToggle("spin", {
	    Text = "spin";
	    Default = false;
	    Callback = function(Value)
	    	spineabled = Value;
	    end;
	});

	charactertab:AddToggle("infjump", {
	    Text = "infinite jump";
	    Default = false;
	    Callback = function(Value)
	        if Value then
	            Con = userinputservice.InputBegan:Connect(function(i, gp)
	                if gp then return; end;
	                if i.KeyCode == Enum.KeyCode.Space and humanoid then
	                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping);
	                end;
	            end);
	        else
	            if Con then
	                Con:Disconnect();
	                Con = nil;
	            end;
	        end;
	    end;
	});
    max_speed = getgenv().safe_mode and 50 or 5000;
    max_speed1 = getgenv().safe_mode and 30 or 100;
    max_speed2 = getgenv().safe_mode and 65 or 1000;
	charactertab:AddSlider("flyspeed", {
	    Text = "fly speed",
	    Default = 16,
	    Min = 16,
	    Max = max_speed,
	    Rounding = 0,
	    Compact = true,
		Callback = function(Value)
			getgenv().flyspeed = Value;
		end;
	});

	charactertab:AddSlider("walkspeed2", {
    	Text = "walk speed";
    	Default = 16;
    	Min = 16;
    	Max = max_speed1;
    	Rounding = 0;
    	Compact = true;
    	Callback = function(value)
    	    local old = getgenv().walkspeed;
    	    getgenv().walkspeed = value;
    	    if getgenv().walkspeedenabled then
    	        local wshandler = modules.Name["WalkSpeedHandlerClient"].getValueContainer();
    	        if wshandler then
    	            wshandler:removeBaseValueAdditive(old - 16);
    	            wshandler:addBaseValueAdditive(value - 16);
    	        end;
    	    end;
    	end;
	});

	charactertab:AddSlider("jumppower2", {
	    Text = "jump power",
	    Default = 50,
	    Min = 50,
	    Max = 200,
	    Rounding = 0,
	    Compact = true,
	    Callback = function(value)
	        getgenv().jumppower = value;
	        if getgenv().jumppowerenabled and humanoid then
	            humanoid.JumpPower = value;
	        end;
	    end;
	});

	charactertab:AddSlider("speed", {
	    Text = "velocity speed",
	    Default = 16,
	    Min = 16,
	    Max = max_speed2,
	    Rounding = 0,
	    Compact = true,
		Callback = function(Value)
			getgenv().velocityspeed = Value;
		end;
	});

	charactertab:AddSlider("spinspeed", {
	    Text = "spin speed",
	    Default = 10,
	    Min = 10,
	    Max = 100,
	    Rounding = 0,
	    Compact = true,
	    Callback = function(Value)
	        spinspeed = Value;
	    end;
	});
end;
-- exploits
exploit:AddToggle("stamina", {
    Text = "stamina",
    Default = false,
    Callback = function(Value)
        getgenv().stamenabled = Value
    end
})
local StaminaDepbox = exploit:AddDependencyBox()
StaminaDepbox:AddToggle("infstamina", {
    Text = "infinite stamina",
    Default = false,
    Callback = function(Value)
        getgenv().infstamina = Value
    end
})
StaminaDepbox:AddToggle("staminaregenstate", {
    Text = "stamina regen rate",
    Default = false,
    Callback = function(Value)
        getgenv().stamregentoggle = Value
    end
})
StaminaDepbox:AddToggle("staminadelaystate", {
    Text = "stamina gain delay",
    Default = false,
    Callback = function(Value)
        getgenv().stamdelaystate = Value
    end
})
local RegenBox = StaminaDepbox:AddDependencyBox();
local DelayBox = StaminaDepbox:AddDependencyBox();
DelayBox:AddSlider("staminadelayslider", {
    Text = "stamina delay",
    Default = 0.25,
    Min = 0,
    Max = 1,
    Rounding = 2,
	Compact = true;
    Callback = function(Value)
        getgenv().stamindelayamount = Value
    end
})
RegenBox:AddSlider("staminaregenslider", {
    Text = "stamina rate",
    Default = 35,
    Min = 0,
    Max = 500,
    Rounding = 1,
	Compact = true;
    Callback = function(Value)
        getgenv().stamregenrate = Value
    end
})
StaminaDepbox:SetupDependencies({
    { Toggles.stamina, true }
})
RegenBox:SetupDependencies({
    { Toggles.staminaregenstate, true }
})
DelayBox:SetupDependencies({
    { Toggles.staminadelaystate, true }
})
exploit:AddToggle("infair", {
    Text = "infinite air";
    Default = false;
    Callback = function(Value)
        if Toggles.infair.Value then
            modules.Name["AirConstants"].AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING = 0;
        else
            modules.Name["AirConstants"].AIR_TO_ADD_PER_SECOND_WHILE_SWIMMING = -15;
        end;
    end;
});
exploit:AddToggle("canalwaysjump", {
    Text = "can always jump";
    Default = false;
    Callback = function(Value)
        getgenv().canalwaysjump = Value;
    end;
});
exploit:AddToggle("nojumpcd", {
    Text = "no jump cooldown";
    Default = false;
    Callback = function(Value)
        if Value then
            modules.Name["JumpConstants"].JUMP_DELAY_ADD = 0;
        else
            modules.Name["JumpConstants"].JUMP_DELAY_ADD = 1;
        end;
    end;
});
originalDashCooldown = nil;
exploit:AddToggle("nodashcd", {
    Text = "no dash cooldown";
    Default = false;
    Callback = function(Value)
		getgenv().ndcd = Value; 
        local dashConstants = modules.Name["DashConstants"];
        if dashConstants then
            if Value then
                if not originalDashCooldown then
                    originalDashCooldown = dashConstants.DASH_COOLDOWN or 3;
                end
                dashConstants.DASH_COOLDOWN = 0;
            elseif originalDashCooldown then
                dashConstants.DASH_COOLDOWN = originalDashCooldown;
            end
        end
    end;
});

framework:BindToRenderStep(LPH_JIT_MAX(function()
	framework:SpinLoop();
    if getgenv().ndcd then
        local SessionsData = framework:GetSessionData();
        local state = SessionsData and SessionsData:getState();
        local dashState = state and (state.dashClient or state.dodgeClient);
        if dashState then
            dashState.isDashing = false;
            if dashState.canDash == false then dashState.canDash = true; end
            if dashState.dashCooldown then dashState.dashCooldown = 0; end
            if dashState.lastDashTick then dashState.lastDashTick = 0; end
            if dashState.lastDashTime then dashState.lastDashTime = 0; end
        end
    end;
end));
exploit:AddToggle("nnt", {
    Text = "no name tag";
    Default = false;
    Callback = function(Value)
        getgenv().nnt = Value;
    end;
});
exploit:AddToggle("nut", {
    Text = "no utility trigger";
    Default = false;
    Callback = function(Value)
        getgenv().nut = Value;
    end;
});
exploit:AddToggle("itu", {
    Text = "instant utility use";
    Default = false;
    Callback = function(Value)
        if Value then
            for i, v in modules.Name["UtilityMetadata"] do
                if v.displayName ~= "Medkit" then
                    v.cacheDur = v.preThrowDuration or 0.001;
                    v.cacheTime = v.useTime or 0;
                    v.preThrowDuration = 0.001;
                    v.useTime = 0;
                end;
            end;
        else
            for i, v in modules.Name["UtilityMetadata"] do
                if v.displayName ~= "Medkit" then
                    v.preThrowDuration = v.cacheDur or v.preThrowDuration;
                    v.useTime = v.cacheTime or v.useTime;
                end;
            end;
        end;
    end;
});
exploit:AddToggle("nkb", {
    Text = "no knockback";
    Default = false;
    Callback = function(Value)
        getgenv().nkb = Toggles.nkb.Value;
    end;
});
exploit:AddToggle("antifling", {
	Text = "anti fling";
	Default = false;
	Callback = function(Value)
		getgenv().antifling = Value
		if getgenv().AntiFlingConnection then
			getgenv().AntiFlingConnection:Disconnect()
			getgenv().AntiFlingConnection = nil
		end
		local collision = {}
		if Value then
			getgenv().AntiFlingConnection = runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
				for player, _ in pairs(getgenv().cachedplayers) do
					if player == Players.LocalPlayer then continue end
					local char = player.Character
					if not char then continue end
					local hrp = char:FindFirstChild("HumanoidRootPart")
					if not hrp then continue end
					if hrp:FindFirstChildWhichIsA("WeldConstraint", true) then continue end
					collision[player] = collision[player] or {}
					if not collision[player][hrp] then
						collision[player][hrp] = {
							CanCollide = hrp.CanCollide;
						}
					end
					hrp.CanCollide = false
				end
			end))
		else
			for player, parts in pairs(collision) do
				if player and player.Character then
					for part, props in pairs(parts) do
						if part and part:IsA("BasePart") then
							part.CanCollide = props.CanCollide
						end
					end
				end
			end
			collision = {}
		end
	end
})
exploit:AddToggle("noswim", {
    Text = "anti swim";
    Default = false;
    Callback = function(Value)
        getgenv().antiswim = Toggles.noswim.Value;
    end;
});
exploit:AddToggle("nfd", {
    Text = "no fall damage";
    Default = false;
    Callback = function(v)
		getgenv().nfd = v;
    end;
});
exploit:AddToggle("nps", {
    Text = "no parry stun";
    Default = false;
    Callback = function(Value)
        getgenv().nps = Value;
    end;
});
exploit:AddToggle("nps2", {
    Text = "no parry slowdown";
    Default = false;
    Callback = function(Value)
        getgenv().nps2 = Value;
    end;
});
exploit:AddToggle("nr", {
    Text = "no ragdoll";
    Default = false;
    Callback = function(Value)
        if Value then
            local ragdoll = modules.Name["RagdollableClient"].attemptToggleActualRagdollClient; modules.Name["RagdollableClient"].attemptToggleActualRagdollClient = LPH_JIT_MAX(function(...)
                if Toggles.nr.Value then
                    return;
                end;
                return ragdoll(...);
            end);
        end;
    end;
});
exploit:AddToggle("noflash", {
    Text = "no flash effects";
    Default = false;
    Callback = function(Value)
        getgenv().noflash = Value;
    end;
});
exploit:AddToggle("nhe", {
    Text = "no health effects";
    Default = false;
    Callback = function(Value)
        getgenv().nhe = Value;
    end;
});
exploit:AddToggle("ngpe", {
    Text = "no ghost potion effects";
    Default = false;
    Callback = function(Value)
        getgenv().ngpe = Value;
    end;
});
exploit:AddToggle("walkonwater", {
    Text = "walk on water";
    Default = false;
});
exploit:AddToggle("ragdoll",{
    Text = "ragdoll";
    Default = false;
});
exploit:AddToggle("speedyboi", {
    Text = "fast animation";
    Default = false;
    Tooltip = "use for instant finish lol ğŸ˜‚ğŸ˜‚ğŸ˜‚";
    Callback = function(Value)
        if animcon then
            animcon:Disconnect();
            animcon = nil;
        end;
        if charcon then
            charcon:Disconnect();
            charcon = nil;
        end;
        local function apply(char)
            local humanoid = char:WaitForChild("Humanoid");
            local animator = humanoid:FindFirstChildOfClass("Animator");
            if not animator then
                animator = Instance.new("Animator");
                animator.Parent = humanoid;
            end;
            animcon = runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
                local speed = Options.AnimSpeed and Options.AnimSpeed.Value or 5;
                for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
                    track:AdjustSpeed(speed);
                end;
            end));
        end;
        if Value then
            if character then
                apply(character);
            end;
            charcon = localplayer.CharacterAdded:Connect(apply);
        else
            if animcon then
                animcon:Disconnect();
                animcon = nil;
            end;
            if charcon then
                charcon:Disconnect();
                charcon = nil;
            end;
            if character then
                if humanoid then
                    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
                        track:AdjustSpeed(1);
                    end;
                end;
            end;
        end;
    end;
});

exploit:AddSlider('AnimSpeed', {
    Text = 'animation speed',
    Default = 5,
    Min = 1,
    Max = 50,
    Rounding = 1,
    Compact = true,
    Suffix = 'x'
});
-- exploits end

-- character exploits
exploit1:AddToggle("desync", {
    Text = "desync";
    Default = false;
    Callback = function()
        updatefeature("desync", "desyncbind", function(state)
            getgenv().desyncenabled = state;
        end);
    end;
}):AddKeyPicker("desyncbind", {
    Text = "desync";
    Default = "F1";
    Mode = "Toggle";
    Callback = function()
        updatefeature("desync", "desyncbind", function(state)
            getgenv().desyncenabled = state;
        end);
    end;
});
exploit1:AddToggle("voidenabled", {
    Text = "void",
    Default = false,
    Callback = function()
        updatefeature("voidenabled", "voidenabledkey", function(state)
			getgenv().voidenabled = state;
        end)
    end
}):AddKeyPicker("voidenabledkey", {
    Text = "void";
    Default = "Y";
    Mode = "Toggle";
    Callback = function()
        updatefeature("voidenabled", "voidenabledkey", function(state)
            getgenv().voidenabled = state;
        end);
    end;
});
exploit1:AddToggle("noclip", {
    Text = "noclip";
    Default = false;
    Callback = function()
        updatefeature("noclip", "noclipbind", function(state)
            getgenv().noclipenabled = state;
        end);
    end;
}):AddKeyPicker("noclipbind", {
    Text = "noclip";
    Default = "Z";
    Mode = "Toggle";
    Callback = function()
        updatefeature("noclip", "noclipbind", function(state)
            getgenv().noclipenabled = state;
        end);
    end;
});
exploit1:AddToggle("fakeposition", {
    Text = "fake position";
    Default = false;
    Callback = function()
        updatefeature("fakeposition", "fakeposkey", function(state)
            setfflag("NextGenReplicatorEnabledWrite4", tostring(state));
        end);
    end;
}):AddKeyPicker("fakeposkey", {
    Text = "fake position";
    Default = "M";
    Mode = "Toggle";
    Callback = function()
        updatefeature("fakeposition", "fakeposkey", function(state)
            setfflag("NextGenReplicatorEnabledWrite4", tostring(state));
        end);
    end;
});
exploit1:AddToggle("hideweapononback", {
    Text = "hide weapon on back";
    Default = false;
    Callback = function(Value)
        if Toggles.hideweapononback.Value then
            humanoid:EquipTool(localplayer.Backpack:GetChildren()[1]);
            task.wait();
            humanoid:UnequipTools();
            getgenv().hideweapon = Value;
        end;
    end;
});

othertabs:AddToggle("HitboxExpand", {
    Text = "hitbox expander",
    Default = Config.HitboxExpand,
    Callback = function(value)
        Config.HitboxExpand = value
    end,
})
othertabs:AddToggle("ShowHitbox", {
    Text = "show expanded hitbox",
    Default = Config.ShowHitbox,
    Callback = function(value)
        Config.ShowHitbox = value
    end;
});
othertabs:AddDropdown("HBEPart", {
    Text = "hit part",
    Default = Config.HBEPart,
    Values = R6BodyParts,
    Callback = function(value)
        Config.HBEPart = value
    end,
})
othertabs:AddSlider("HitboxSize", {
    Text = "hitbox size",
    Default = Config.HitboxSize,
    Min = 1,
    Max = 20,
    Rounding = 0,
    Compact = true,
    Suffix = " studs",
    Callback = function(value)
        Config.HitboxSize = value
    end,
})

-- main misc

mmisc:AddToggle("svs", {
    Text = "spoof vc status";
    Default = false;
    Tooltip = "join vc servers without vc";
    Callback = function(Value)
        getgenv().vcenabled = Value;
        network:FireServer("UpdateHasVc", true);
    end;
});
mmisc:AddToggle("ShowLine", {
	Text = "show line";
	Default = false;
}):AddColorPicker("linecolor", {
	Default = Color3.new(1, 1, 1);
	Title = "line color";
	Transparency = 0;
});
mmisc:AddToggle("antimod", {
    Text = "anti mod";
    Default = false;
    Callback = function(Value)
        getgenv().antimod = Value;
        if Value then
            lastcheck = 0;
            taskspawn(LPH_JIT_MAX(function()
                while getgenv().antimod do
                    if tick() - lastcheck >= 2 then
                        lastcheck = tick();
                        for player, _ in pairs(getgenv().cachedplayers) do
                            if player ~= localplayer then
                                local ismod = modules.Name["ModHandler"].getIsMod(player);
                                local isadmin = modules.Name["AdminHandler"].getIsAdmin(player);
                                if ismod then
                                    localplayer:Kick("staff detected\n" .. player.DisplayName .. " (@" .. player.Name .. ")");
                                    return;
                                elseif isadmin then
                                    localplayer:Kick("admin detected\n" .. player.DisplayName .. " (@" .. player.Name .. ")");
                                    return;
                                end
                            end
                        end
                    end
                    task.wait(2);
                end
            end));
        else
            getgenv().antimod = false;
        end
    end;
});
-- misc
misc:AddButton("get cat", function()
    network:FireServer("ExecuteCommand", "getCat", {})
end);
misc:AddButton("unlock emotes", function()
	local rodux = framework:GetState()
	for i, v in modules.Name["EmotesInOrder"] do
		if typeof(v) == "table" then
			rodux.OwnedEmotes[v.id] = 1
		end;
	end;
end);
misc:AddToggle("fno", {
    Text = "force network ownership";
    Default = false;
    Tooltip = "prevents rectify from affecting you";
    Callback = function(Value)
        getgenv().fno = Value;
    end;
});
misc:AddToggle("ip", {
	Text = "include position";
	Default = false;
	Callback = function(v)
		local maxhistory = 10
		local function connect(Character)
			ignorerespawn = true;
			poshistory = {};
			notowner = true;
			hasteleported = false;
			toolonloss = nil;
			if humanoid then
				if deathconn then
					deathconn:Disconnect();
				end
				deathconn = humanoid.Died:Connect(function()
					ignorerespawn = true;
				end);
			end;
			task.delay(0.25, function()
				ignorerespawn = false;
			end);
		end;
		if v and getgenv().fno then
			if deathconnection then return; end;
			deathconnection = localplayer.CharacterAdded:Connect(connect);
			if character then
				connect(character);
			end;
			if positionconnection then
				positionconnection:Disconnect();
			end;
			positionconnection = runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
				if ignorerespawn then return; end;
				if not character then return; end;
				if not humanoidrootpart or not humanoidrootpart:IsDescendantOf(workspace) then return; end;
				local success, isowner = pcall(function()
					return isnetworkowner(humanoidrootpart);
				end);
				if not success then return; end;
				if isowner then
					local currentposition = humanoidrootpart.Position;
					if #poshistory == 0 or (currentposition - poshistory[#poshistory]).Magnitude > 0.001 then
						table.insert(poshistory, currentposition);
						if #poshistory > maxhistory then
							table.remove(poshistory, 1);
						end;
					end;
					if not notowner and not hasteleported then
						local teleportposition;
						if #poshistory >= 3 then
							teleportposition = poshistory[#poshistory - 2];
						elseif #poshistory > 0 then
							teleportposition = poshistory[1];
						else
							teleportposition = humanoidrootpart.Position;
						end;
						teleport(cframenew(teleportposition));
						hasteleported = true;
						task.delay(0.1, function()
							if toolonloss and toolonloss:IsDescendantOf(character) and humanoid then
								humanoid:EquipTool(toolonloss);
							end;
						end);
					end;
					notowner = true;
				else
					notowner = false;
					hasteleported = false;
					toolonloss = nil;
					for _, item in ipairs(character:GetChildren()) do
						if item:IsA("Tool") then
							toolonloss = item;
							break;
						end;
					end;
				end;
			end));
		else
			if positionconnection then
				positionconnection:Disconnect();
				positionconnection = nil;
			end
			if deathConn then
				deathConn:Disconnect();
				deathConn = nil;
			end
			if deathconnection then
				deathconnection:Disconnect();
				deathconnection = nil;
			end;
		end;
	end;
});
do
	runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
    local localPlayer = Players.LocalPlayer
    local now = tick()
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    if humanoid.Health == 0 then
        if now - lastFastRespawn >= FASTRESPAWN_DELAY then
            lastFastRespawn = now
            network:FireServer("StartFastRespawn")
            network:InvokeServer("CompleteFastRespawn")
        end
    end
end));
local HttpService = game:GetService("HttpService")
local localPlayer = Players.LocalPlayer
local playerName = localPlayer.Name
local filename = "antimeowprocess.txt"

local loopCounts = {}
if pcall(function() return readfile(filename) end) then
    local success, data = pcall(function()
        return HttpService:JSONDecode(readfile(filename))
    end)
    if success and type(data) == "table" then
        loopCounts = data
    end
end

local previousLoops = loopCounts[playerName] or 0
local totalLoops = 100
local remainingLoops = math.max(totalLoops - previousLoops, 0)

local function saveLoopCount(count)
    loopCounts[playerName] = count
    writefile(filename, HttpService:JSONEncode(loopCounts))
end

getgenv().ForceResetCharacter = function(framework, network)
    local localPlayer = Players.LocalPlayer
    if not localPlayer then return end

    if remainingLoops <= 0 then
        library:Notify("already completed", 3)
        return
    end

    local completedLoops = 0
    library:Notify("starting loop", 3)

    for i = 1, remainingLoops do
        if framework:InMenu(localPlayer) then
            local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")

            if humanoid.Health <= 0 then
                repeat
                    character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
                    humanoid = character:WaitForChild("Humanoid")
                    task.wait()
                until humanoid.Health > 0 and framework:InMenu(localPlayer)
            end

            network:InvokeServer("SpawnCharacter")
            task.wait(0.2)
            network:FireServer("SelfDamage", math.huge, {
                ["shouldAlwaysDamage"] = true,
                ["ignoreForceField"] = true
            })

            completedLoops = completedLoops + 1
            saveLoopCount(previousLoops + completedLoops)
        end

        task.wait(1)
    end

    library:Notify("completed", 3)
end
end;
local casemt = modules.Name["CaseMetadata"];
local cratenames = {};
local displayid = {}
for caseid, casedata in pairs(casemt) do
    local displayname = casedata.displayName or caseid;
    table.insert(cratenames, displayname);
    displayid[displayname] = caseid;
end;
table.sort(cratenames);
local SelectedCrateName = cratenames[1] or "";
local selectedamount = 1;
crates:AddDropdown("crates", {
    Text = "crates";
    Values = cratenames;
    Default = SelectedCrateName;
    Multi = false;
    Callback = function(v)
        SelectedCrateName = v
    end;
});
crates:AddSlider("amount", {
    Text = "amount";
    Default = 1;
    Min = 1;
    Max = 10;
    Rounding = 0;
    Compact = true;
    Callback = function(value)
        selectedamount = mathfloor(value)
    end;
});
crates:AddButton({
	Text = "open case";
	Func = function()
		local caseid = displayid[SelectedCrateName];
		if caseid then
			local success, response = network:InvokeServer("PurchaseCase", caseid, selectedamount);
			if success then
				setthreadidentity(2);
				modules.Name["ToastNotificationActionsClient"].add(
					"success",
					`Opened {tostring(selectedamount)} case(s) of {SelectedCrateName}`,
					2
				)(modules.Name["RoduxStore"].store);
				modules.Name["SoundHandler"].playSound({
					soundObject = ReplicatedStorage.Shared.Assets.Sounds.Success,
					parent = Workspace.Sounds,
				});
				setthreadidentity(7);
			else
				setthreadidentity(2);
				modules.Name["ToastNotificationActionsClient"].add(
					"error",
					response,
					2,
					true
				)(modules.Name["RoduxStore"].store);
				setthreadidentity(7);
			end
		else
			setthreadidentity(2);
			modules.Name["ToastNotificationActionsClient"].add(
				"error",
				"Please select a valid case from the dropdown.",
				2,
				true
			)(modules.Name["RoduxStore"].store);
			setthreadidentity(7);
		end;
	end;
});
crates:AddButton({
	Text = "S N O W V E I L";
	Func = StartSnowveilEffect;
});
--[[crates:AddButton({
	Text = "anti-meow bans";
	Func = function()
		ForceResetCharacter(framework, network);
	end;
	Tooltip = "this process will repeat itself 100 times";
});]]
crates:AddDropdown("spoofervalues", {
	Text = "device spoofer";
	Values = { "pc", "phone", "tablet", "xbox" };
	Default = getgenv().selecteddevice;
	Multi = false;
	Callback = function(v)
		getgenv().selecteddevice = v;
	end;
});
crates:AddToggle("devicespoofer", {
	Text = "device spoofer";
	Default = getgenv().devicespoofer;
	Callback = function(v)
		getgenv().devicespoofer = v;
	end;
});
miscauto:AddToggle("fastrespawn", {
    Text = "fast respawn";
    Default = false;
    Callback = function(Value)
        getgenv().fastrespawn = Value;
    end;
});
miscauto:AddToggle("ar", {
    Text = "auto revive";
    Default = false;
    Callback = function(Value)
        getgenv().ar = Value;
    end;
});
miscauto:AddToggle("loopspawn", {
    Text = "loop spawn";
    Default = false;
    Callback = function(Value)
        getgenv().loopspawn = Value;
    end;
});
function bestmatch(Input)
    if not Input or Input == "" then
        return nil;
    end;
    Input = Input:lower();
    for plr, _ in pairs(getgenv().cachedplayers) do
        if plr ~= localplayer then
            local namematch = plr.Name:lower():find(Input);
            local displaymatch = plr.DisplayName:lower():find(Input);
            if namematch or displaymatch then
                return plr;
            end;
        end;
    end;
    return nil;
end;
local misc1 = misc_tab:AddTab("players");
local currenttarget = misc1:AddLabel("current target: none");
local SelectedPlayer = nil;
misc1:AddInput("playersearch", {
    Placeholder = "enter name or display";
    Default = "";
    ClearTextOnFocus = false;
    Callback = function(Text)
        Text = Text:lower()
        local target = bestmatch(Text)
        if target then
            SelectedPlayer = target
            currenttarget:SetText("current target: " .. target.DisplayName .. " (@" .. target.Name .. ")")
        else
            SelectedPlayer = nil
            currenttarget:SetText("current target: none")
        end
    end;
});
local PlayerNames = {};
local function UpdatePlayerDropdown()
    table.clear(PlayerNames);
    for plr, _ in pairs(getgenv().cachedplayers) do
        if plr ~= localplayer then
            table.insert(PlayerNames, plr.Name);
        end;
    end;
    if Options.PlayerDropdown then 
        Options.PlayerDropdown:SetValues(PlayerNames);
    end;
end;

misc1:AddDropdown("PlayerDropdown", {
    Values = PlayerNames;
    Default = nil;
    Multi = false;
    AllowNull = true;
    Text = "select player";
    Callback = function(Value)
        if Value and Value ~= "" then
            SelectedPlayer = game.Players:FindFirstChild(Value);
            if SelectedPlayer then
                currenttarget:SetText("current target: " .. SelectedPlayer.DisplayName .. " (@" .. SelectedPlayer.Name .. ")");
                if Options.playersearch then
                    Options.playersearch:SetValue(SelectedPlayer.Name);
                end;
            end;
        else
            SelectedPlayer = nil;
            currenttarget:SetText("current target: none");
            if Options.playersearch then
                Options.playersearch:SetValue("");
            end;
        end;
    end;
});
UpdatePlayerDropdown();
game.Players.PlayerAdded:Connect(function()
    task.wait(0.1);
    UpdatePlayerDropdown();
end);
game.Players.PlayerRemoving:Connect(function(plr)
    UpdatePlayerDropdown();
    if SelectedPlayer and SelectedPlayer == plr then
        SelectedPlayer = nil;
        currenttarget:SetText("current target: none");
        if Options.PlayerSearch then
            Options.PlayerSearch:SetValue("");
        end;
    end;
end);
local voidactive = Toggles.voidenabled.Value and Options.voidenabledkey:GetState();
local viewDied = nil;
local viewChanged = nil;
misc1:AddButton("teleport", function()
	framework:Teleport(SelectedPlayer.Character.HumanoidRootPart.CFrame);
end);
local killphase = 0
serverposition("heartbeat", "initattemptkill", function(cf)
    if killphase == 1 then
        return cf + vector3new(0, 1000, 0);
    elseif killphase == 2 then
        network:FireServer("StartFallDamage");
        return cf + vector3new(0, -1000, 0);
    end;
    return cf;
end, 20);
serverposition("heartbeat", "AvoidProjectiles", function(cf)
	if getgenv().voidenabled then return; end;
    return cf * CFrame.new(0, 60, 0);
end, 17);
if not getgenv().safe_mode then
kill:AddButton("attempt kill", function()
	local targetplayer = SelectedPlayer;
	if not targetplayer then
		return;
	end;
	if framework:InMenu(targetplayer) then
		HitDetectionImpl.CreateLog("nil.solutions | Target is in menu.")
		return;
	end;
	local realname = targetplayer.Name or targetplayer.Character.Name;
	local isnpc = false;
	local target = nil;
	if not targetplayer:IsA("Player") then
		local npcmodel = workspace.NPCs:FindFirstChild(realname);
		if npcmodel then
			isnpc = true;
			target = {
				Character = npcmodel;
				Name = npcmodel.Name;
			};
		else
			return;
		end;
	else
		target = targetplayer;
	end;
	if framework:InMenu(localplayer) then
		repeat task.wait(); until not framework:InMenu(localplayer);
	end;
	task.wait(0.1);
	if not getgenv().falldamage then
		if voidactive then
			setrunning("voidhidelogic", false);
		end;
        setrunning("initattemptkill", true);
        killphase = 1;
        task.wait(0.2);
        killphase = 2;
        task.wait(0.05);
        setrunning("initattemptkill", false);
        if voidactive then
			setrunning("voidhidelogic", true);
        end;
		getgenv().falldamage = true;
	end;
	local desync = false;
	local desyncthreadref = nil;
	local attachactive = true;
	local function startjitter(rootpart)
		if not rootpart or desyncthreadref then return; end;
		desync = true;
		local verticaloffset = 0.1;
		desyncthreadref = taskspawn(LPH_JIT_MAX(function()
			while desync and rootpart and rootpart.Parent do
				runservice.Heartbeat:Wait();
				local prevel = rootpart.AssemblyLinearVelocity;
				rootpart.AssemblyLinearVelocity = vector3new(mathrandom(-1500,1500), mathrandom(-300,300), mathrandom(-1500,1500));
				runservice.RenderStepped:Wait();
				if rootpart.Parent then
					rootpart.AssemblyLinearVelocity = prevel;
				end;
				runservice.Stepped:Wait();
				if rootpart.Parent then
					rootpart.AssemblyLinearVelocity = prevel + vector3new(0, verticaloffset, 0);
					verticaloffset = -verticaloffset;
				end;
			end;
			desyncthreadref = nil;
		end));
	end;
local function stopjitter()
    desync = false;
end;
local function getmychar()
    local char = localplayer.Character;
    if not char or not char.Parent then
        char = localplayer.CharacterAdded:Wait();
    end;
    local root = char:FindFirstChild("HumanoidRootPart");
    local hum = char:FindFirstChild("Humanoid");
    return char, root, hum;
end;
local function gettargetchar()
    if isnpc then
        local char = target.Character;
        if char and char.Parent then
            return char, char:FindFirstChild("HumanoidRootPart");
        end;
        return nil, nil;
    else
        local char = target.Character;
        if not char or not char.Parent then
            char = target.CharacterAdded:Wait();
        end;
        return char, char:FindFirstChild("HumanoidRootPart");
    end;
end;
local heartbeatconn; heartbeatconn = runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
    if not attachactive then
        heartbeatconn:Disconnect();
        return;
    end;
    local mychar, myroot, myhumanoid = getmychar();
    local targetchar, targetroot = gettargetchar();
    if myroot and myhumanoid and targetroot then
        local rootToUse = driver or myroot;
        rootToUse.CFrame = targetroot.CFrame;
        sethiddenproperty(rootToUse, "PhysicsRepRootPart", targetroot);
        local ragdollremote = myhumanoid:FindFirstChild("RagdollRemoteEvent") 
            or myhumanoid:WaitForChild("RagdollRemoteEvent");
        if ragdollremote then
            ragdollremote:FireServer(true);
        end;
        startjitter(rootToUse);
    end;
end));
taskspawn(LPH_JIT_MAX(function()
	while attachactive do
		if framework:InMenu(localplayer) then break; end;
		local _, myroot, myhumanoid = getmychar();
		local _, targetroot = gettargetchar();
		if not myhumanoid or myhumanoid.Health <= 0 then
			task.wait(0.1);
		else
			for i = 1, 50 do
				if framework:InMenu(localplayer) then break; end;
				if targetroot and targetroot.Parent then
					network:FireServer("TakeFallDamage",math.huge,vector3new(0, -1, 0),targetroot.Position);
				end;
				task.wait();
			end;
		end;

		task.wait(0.05);
	end;
	attachactive = false;
	stopjitter();
	if heartbeatconn then heartbeatconn:Disconnect(); end;
end));
end);
kill:AddButton("attempt fling", function()
    local target = SelectedPlayer
    if not target then return; end;
    if framework:InMenu(target) then
        HitDetectionImpl.CreateLog("nil.solutions | Target is in menu.")
        return;
    end;
    local fling = true;
    local hbconn, velconn;
    local connections = {}
    local function stopFling()
        if not fling then return; end;
        fling = false;
        for _, conn in ipairs(connections) do
            if conn.Connected then
                conn:Disconnect();
            end;
        end;
        connections = {};
        if humanoidrootpart and humanoidrootpart.Parent then
            sethiddenproperty(humanoidrootpart, "PhysicsRepRootPart", humanoidrootpart)
            humanoidrootpart.Velocity = Vector3.zero;
            humanoidrootpart.RotVelocity = Vector3.zero;
        end;
    end;
    local function getrootandhumanoid(player)
        local char = player.Character;
        if not char then return; end;
        local hrp = char:FindFirstChild("HumanoidRootPart");
        local hum = char:FindFirstChildOfClass("Humanoid");
        if hrp and hum then
            return hrp, hum;
        end;
    end;
    local function fling()
        local targethrp, targethumanoid = getrootandhumanoid(target)
        if not targethrp or not targethumanoid or not humanoidrootpart then
            stopFling();
            return;
        end;
        table.insert(connections, targethumanoid.Died:Once(stopFling));
        table.insert(connections, humanoid.Died:Once(stopFling));
        table.insert(connections, target.CharacterAdded:Connect(stopFling));
        table.insert(connections, localplayer.CharacterAdded:Connect(stopFling));
        table.insert(connections, runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
            if not fling then return; end;
            local newhrp, _ = getrootandhumanoid(target);
            if newhrp and humanoidrootpart and humanoidrootpart.Parent then
                sethiddenproperty(humanoidrootpart, "PhysicsRepRootPart", newhrp);
                humanoidrootpart.CFrame = newhrp.CFrame;
            end;
        end)));
        table.insert(connections, runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
            if not fling then return; end;
            if humanoidrootpart and humanoidrootpart.Parent then
                local vel = humanoidrootpart.Velocity;
                humanoidrootpart.Velocity = vel * 10000 + vector3new(0, 10000, 0);
                runservice.RenderStepped:Wait();
                humanoidrootpart.Velocity = vel + vector3new(0, 0.1, 0);
            end;
        end)));
    end;
    fling();
end);
end;
misc1:AddButton("whitelist", function()
    local playername = SelectedPlayer.Name;
    if not table.find(whitelist, playername) then
        table.insert(whitelist, playername);
        library:Notify(playername .. " whitelisted", 4);
    else
        library:Notify(playername .. " is already whitelisted", 4);
    end;
end);
misc1:AddButton("remove from whitelist", function()
    local playername = SelectedPlayer.Name;
    local index = table.find(whitelist, playername);
    if index then
        table.remove(whitelist, index);
        library:Notify(playername .. " unwhitelisted", 4);
    else
        library:Notify(playername .. " is not whitelisted", 4);
    end;
end);
local Desync = false
local desyncThreadRef = nil

local function Jitter(rootPart)
    if not rootPart or desyncThreadRef then return end
    Desync = true

    desyncThreadRef = task.spawn(LPH_JIT_MAX(function()
        while Desync and rootPart and rootPart.Parent do
            runservice.Heartbeat:Wait()

            rootPart.AssemblyLinearVelocity = vector3new(
                mathrandom(-800, 800),   -- tighter X/Z
                mathrandom(-200, -100),  -- consistently downward Y
                mathrandom(-800, 800)
            )

            runservice.Heartbeat:Wait()
        end

        desyncThreadRef = nil
    end))
end

local function StopJitter()
	Desync = false
	desyncThreadRef = nil
end
local function AttemptKillTarget(targetPlayer)
	if not targetPlayer then return end

	local myCharacter = character or localplayer.CharacterAdded:Wait()
	local myRoot = myCharacter:FindFirstChild("HumanoidRootPart")
	local myHumanoid = myCharacter:FindFirstChild("Humanoid")
	local targetCharacter = targetPlayer.Character or targetPlayer
	local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
	local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")

	if not myRoot or not myHumanoid or not targetRoot or not targetHumanoid then return end
	if framework:InMenu(localplayer) then return end

	local root = driver or humanoidrootpart
	if root and targetRoot then
		root.CFrame = targetRoot.CFrame
		sethiddenproperty(root, "PhysicsRepRootPart", targetRoot)
	end

	local ragdollEvent = myHumanoid:FindFirstChild("RagdollRemoteEvent")
		or myHumanoid:WaitForChild("RagdollRemoteEvent", 0.5)
	if ragdollEvent then
		ragdollEvent:FireServer(true)
	end

	Jitter(myRoot)
	AttachRoot = targetRoot

	if targetRoot and targetRoot.Parent then
		local pos = targetRoot.Position
		for i = 1, 5 do
			network:FireServer("TakeFallDamage", math.huge, vector3new(0, -1, 0), pos)
		end
	end

	AttachRoot = nil
	StopJitter()
end
if not getgenv().safe_mode then
kill:AddButton({
    Text = "re-init attempt kill",
    Func = function()
		if framework:InMenu(localplayer) then
			repeat
				task.wait();
			until not framework:InMenu(localplayer);
		end;
		task.wait(0.1);
		if not humanoidrootpart then
			return;
		end;
        local hrp = localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart");
        if hrp then
            task.wait(0.1);
            if voidactive then
                setrunning("voidhidelogic", false)
            end
            setrunning("initattemptkill", true)
            killphase = 1
            task.wait(0.2)
            killphase = 2
            task.wait(0.05)
            setrunning("initattemptkill", false);
            if voidactive then
				setrunning("voidhidelogic", true);
            end;
        end;
    end,
    Tooltip = "re-initialize attempt kill incase it failed";
});
end;
misc1:AddToggle("spectateto", {
	Text = "spectate";
	Default = false;
	Callback = function(v)
		if not v then
			viewing = nil;
			if viewDied then viewDied:Disconnect(); viewDied = nil; end
			if viewChanged then viewChanged:Disconnect(); viewChanged = nil; end
			local myChar = localplayer.Character;
			if myChar then
				local hum = myChar:FindFirstChildOfClass("Humanoid");
				if hum then workspace.CurrentCamera.CameraSubject = hum; end
			end
		else
			local target = SelectedPlayer;
			if not target then return; end;
			viewing = target;
			local function updateView()
				if not viewing or not viewing.Character then return; end
				local hum = viewing.Character:FindFirstChildOfClass("Humanoid");
				if hum then workspace.CurrentCamera.CameraSubject = hum; end
			end
			updateView();
			viewDied = viewing.CharacterAdded:Connect(function(char)
				repeat task.wait(); until char:FindFirstChildOfClass("Humanoid");
				updateView();
			end);
			viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
				if viewing and viewing.Character then
					local hum = viewing.Character:FindFirstChildOfClass("Humanoid");
					if hum and workspace.CurrentCamera.CameraSubject ~= hum then
						workspace.CurrentCamera.CameraSubject = hum;
					end
				end
			end);
		end
	end;
});
local loopkillthread = nil;
local currentTarget = nil;
local loopkilltarget_hb = nil;
local attachactive = false;
if not getgenv().safe_mode then
kill:AddToggle("loopkilltarget", {
    Text = "loop attempt kill target";
    Default = false;
    Callback = function(Value)
        getgenv().loopkilltarget = Value;
        attachactive = Value;

        if not Value then
            currentTarget = nil;
            attachactive = false;

            if loopkillthread then
                task.cancel(loopkillthread);
                loopkillthread = nil;
            end

            if loopkilltarget_hb then
                loopkilltarget_hb:Disconnect();
                loopkilltarget_hb = nil;
            end

            return;
        end

        if framework:InMenu(localplayer) then
            repeat task.wait() until not framework:InMenu(localplayer);
        end
        task.wait(0.1);
		if not getgenv().falldamage then
			if voidactive then
				setrunning("voidhidelogic", false)
			end
        	setrunning("initattemptkill", true)
        	killphase = 1
        	task.wait(0.2)
        	killphase = 2
        	task.wait(0.05)
        	setrunning("initattemptkill", false)
        	if voidactive then
				setrunning("voidhidelogic", true)
        	end
			getgenv().falldamage = true;
		end;
        if loopkilltarget_hb then
            loopkilltarget_hb:Disconnect();
            loopkilltarget_hb = nil;
        end
        loopkilltarget_hb = runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
            if not getgenv().loopkilltarget or not attachactive or not currentTarget then return; end;
            local targetChar = currentTarget.Character;
            local myRoot = localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart");
            if targetChar and targetChar:FindFirstChild("HumanoidRootPart") and myRoot then
                local rootToUse = driver or myRoot;
                rootToUse.CFrame = targetChar.HumanoidRootPart.CFrame;
                sethiddenproperty(rootToUse, "PhysicsRepRootPart", targetChar.HumanoidRootPart);
            end
        end));
        if loopkillthread then
            task.cancel(loopkillthread);
            loopkillthread = nil;
        end
        loopkillthread = taskspawn(LPH_JIT_MAX(function()
            while getgenv().loopkilltarget and attachactive do
                local targetPlayer = SelectedPlayer;
                local lpChar = localplayer.Character;
                local lpHumanoid = lpChar and lpChar:FindFirstChild("Humanoid");

                if framework:InMenu(localplayer) or not lpHumanoid or lpHumanoid.Health <= 0 or not targetPlayer or targetPlayer == localplayer then
                    currentTarget = nil;
                    task.wait(0.2);
                    continue;
                end

                local targetChar = targetPlayer.Character;
                if not targetChar or not targetChar:FindFirstChild("HumanoidRootPart") or not targetChar:FindFirstChild("Humanoid") or targetChar.Humanoid.Health <= 0 then
                    currentTarget = nil;
                    task.wait(0.2);
                    continue;
                end

                if currentTarget ~= targetPlayer then
                    currentTarget = targetPlayer;
                end

                while getgenv().loopkilltarget and attachactive
                    and currentTarget == targetPlayer
                    and targetChar.Parent
                    and targetChar:FindFirstChild("Humanoid")
                    and targetChar.Humanoid.Health > 0
                    and lpHumanoid.Health > 0
                    and not framework:InMenu(localplayer)
                do
                    AttemptKillTarget(targetPlayer);
                    task.wait(0.1);
                end

                task.wait(0.1);
            end
            currentTarget = nil;
            attachactive = false;

            if loopkillthread then
                task.cancel(loopkillthread);
                loopkillthread = nil;
            end

            if loopkilltarget_hb then
                loopkilltarget_hb:Disconnect();
                loopkilltarget_hb = nil;
            end
        end));
    end;
});
local CanKillAll = false
kill:AddToggle("loopkillall", {
    Text = "loop attempt kill all",
    Default = false,
    Callback = function(Value)
        getgenv().loopkillall = Value
        taskspawn(function()
            if Value then
                if framework:InMenu(localplayer) then
                    repeat task.wait() until not framework:InMenu(localplayer)
                end
                if voidactive then
                    setrunning("voidhidelogic", false)
                end
                CanKillAll = false
                CanFireStartFallDamage = false
                setrunning("initattemptkill", true)
                killphase = 1
                task.wait(0.2)
                killphase = 2
                task.wait(0.05)
                setrunning("initattemptkill", false)
                if voidactive then
                    setrunning("voidhidelogic", true)
                end
                CanKillAll = true
                CanFireStartFallDamage = true
            else
                setrunning("initattemptkill", false)
                CanKillAll = false
                CanFireStartFallDamage = true
            end
        end)
    end
})
local cas = game:GetService("ContextActionService");
local function alive(player)
	local character = player.Character;
	if not character then return false; end;
	local humanoid = character:FindFirstChildOfClass("Humanoid");
	if not humanoid then return false; end;
	return humanoid.Health > 0;
end;
local function onspace(actionName, inputState)
	if inputState == Enum.UserInputState.Begin then
		network:InvokeServer("SpawnCharacter", true);
	end;
	return Enum.ContextActionResult.Sink;
end;
runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
	local menu = framework:InMenu(localplayer);
	local alive = alive(localplayer);
	if menu and alive and not bound then
		cas:BindAction("MenuSpaceOverride", onspace, false, Enum.KeyCode.Space);
		bound = true;
	elseif (not menu or not alive) and bound then
		cas:UnbindAction("MenuSpaceOverride");
		bound = false;
	end;
end));
local isAliveFlag = true
local function StartKillLoop(character)
	local characterRoot = character:WaitForChild("HumanoidRootPart")
	local characterHumanoid = character:WaitForChild("Humanoid")
	isAliveFlag = true

	characterHumanoid.Died:Connect(LPH_JIT_MAX(function()
		isAliveFlag = false
	end))

	taskspawn(LPH_JIT_MAX(function()
		while isAliveFlag and characterHumanoid.Health > 0 do
			if not CanKillAll or not getgenv().loopkillall or framework:InMenu(localplayer) then
				AttachRoot = nil
				task.wait(0.2)
				continue
			end

			local cachedPlayers = getgenv().cachedplayers

			for targetPlayer in pairs(cachedPlayers) do
				if not isAliveFlag or not getgenv().loopkillall then break end
				if framework:InMenu(localplayer) then
					AttachRoot = nil
					break
				end

				if targetPlayer == localplayer then continue end
				if framework:InMenu(targetPlayer) then continue end
				if whitelisted(targetPlayer) then continue end

				local targetChar = targetPlayer.Character
				if not targetChar then continue end

				local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
				local targetHumanoid = targetChar:FindFirstChild("Humanoid")

				if not targetRoot or not targetHumanoid then continue end
				if targetHumanoid.Health <= 0 then continue end
				if targetChar:FindFirstChildOfClass("ForceField") then continue end

				local root = driver or humanoidrootpart
				taskspawn(LPH_JIT_MAX(function()
					while isAliveFlag and targetRoot.Parent and targetHumanoid.Health > 0 do
						if framework:InMenu(localplayer) then break end
						root = driver or humanoidrootpart
						if root and targetRoot then
							root.CFrame = targetRoot.CFrame
							sethiddenproperty(root, "PhysicsRepRootPart", targetRoot)
							AttachRoot = targetRoot
						end
						task.wait()
					end
					AttachRoot = nil
				end))

				AttemptKillTarget(targetPlayer)
				task.wait(0.05)
			end

			task.wait(0.2)
		end
	end))
end
if localplayer.Character then
	StartKillLoop(localplayer.Character)
end
localplayer.CharacterAdded:Connect(StartKillLoop);
runservice.Heartbeat:Connect(LPH_JIT_MAX(function(dt)
	if humanoidrootpart then
		if AttachRoot then
			local rootToUse = driver or humanoidrootpart;
			rootToUse.CFrame = AttachRoot.CFrame;
			sethiddenproperty(rootToUse, "PhysicsRepRootPart", AttachRoot);
		end;
	end;
end));
end;
network:BindEvents({
	KilledPlayer = function(statData)
		local KillSayStuff = Data.KillSayStuff
		local MockHandler = modules.Name["MockPlayerHandler"]
		local KillStreak = modules.Name["KillStreakConfigs"]
		local diedPlayer = MockHandler.getPlayerOrMockFromPlayerOrMockUserId(statData.playerOrMockUserIdThatDied)
		local killType = statData.singleKillType
		local killStreak = statData.killStreak
		local headShot = statData.isHeadshot
		local collat = statData.isCollat
		local multiplier = statData.xpMult
		local baseXp = statData.baseXpToGive
		local baseCredits = statData.baseCreditsToGive
		if diedPlayer and getgenv().killsay then
			local PickFrom = KillSayStuff.Normal
			local GotXp = baseXp
			local GotCredits = baseCredits
			if killType == "2" then
				PickFrom = KillSayStuff.Assist
			elseif killType == "3" then
				PickFrom = KillSayStuff.Finish
				GotXp = statData.finishXpToGive
				GotCredits = statData.finishCreditsToGive
			elseif killType == "4" then
				PickFrom = KillSayStuff.Glory
				GotXp = statData.gkXpToGive
				GotCredits = statData.gkCreditsToGive
			end
			if headShot then
				PickFrom = PickFrom.Headshot or PickFrom
				GotXp = statData.headshotXpToGive
				GotCredits = statData.headshotCreditsToGive
			end
			if collat then
				PickFrom = PickFrom.Collat or PickFrom
				GotXp = statData.collatXpToGive
				GotCredits = statData.collatCreditsToGive
			end
			local killStreakData = killStreak > 1 and (KillStreak[killStreak - 1] or KillStreak[#KillStreak])
			if killStreakData then
				GotXp = statData.killStreakXpToGive
				GotCredits = statData.killStreakCreditsToGive
			end
			local Message
			repeat
				Message = PickFrom[mathrandom(1, #PickFrom)]
				task.wait()
			until typeof(Message) == "string"
			Message = Message:gsub("%%Died%%", diedPlayer.DisplayName)
			Message = Message:gsub("%%XP%%", GotXp * multiplier)
			Message = Message:gsub("%%Credits%%", GotCredits)
			if killStreakData then
				Message = Message:gsub("%%KillstreakDisplayName%%", killStreakData.displayName)
			else
				Message = Message:gsub("%%KillstreakDisplayName%%", "Double Kill")
			end
			local Weapon = framework:GetWeapon() or framework:GetRanged()
			if Weapon then
				Message = Message:gsub("%%Weapon%%", Weapon.Name)
			end
			if CanSend then
				TextChatService.TextChannels.RBXGeneral:SendAsync(Message)
			end
		end
	end
})

local CachedPlayers = {};
local function UpdateCachedPlayers()
	CachedPlayers = {};
	for _, v in players:GetPlayers(players) do
		if v ~= localplayer then
			table.insert(CachedPlayers, v);
		end;
	end;
end;
UpdateCachedPlayers();
players.PlayerAdded:Connect(function()
	UpdateCachedPlayers();
end);
players.PlayerRemoving:Connect(function()
	UpdateCachedPlayers();
end);
local FlingThread;
local CanFlingAll = false;
if not getgenv().safe_mode then
kill:AddToggle("loopflingall", {
    Text = "loop attempt fling all";
    Default = false;
    Callback = function(Value)
        if not Value then
            CanFlingAll = false;
            if FlingThread then
                task.cancel(FlingThread);
                FlingThread = nil;
            end;
            return;
        end;

        if framework:InMenu(localplayer) then
            repeat task.wait() until not framework:InMenu(localplayer)
        end

        task.wait(0.05)
        CanFlingAll = true;
        FlingThread = taskspawn(LPH_JIT_MAX(function()
            while CanFlingAll do
                if framework:InMenu(localplayer) then
                    repeat task.wait() until not framework:InMenu(localplayer)
                end
                if not CanFlingAll then break; end;

                local LocalRoot = localplayer.Character and localplayer.Character:FindFirstChild("HumanoidRootPart")
                if not LocalRoot then
                    task.wait(0.1);
                    continue;
                end;

                local playercount = 0;
                for i = 1, #CachedPlayers do
                    if not CanFlingAll then break; end;
                    local Player = CachedPlayers[i];
                    if not Player or not Player.Parent then continue; end;
                    if framework:InMenu(Player) then continue; end;
                    if table.find(whitelist, Player.Name) then continue; end;

                    local Char = Player.Character;
                    local targetroot = Char and Char:FindFirstChild("HumanoidRootPart");
                    if not targetroot then continue; end;

                    local targetpos = targetroot.Position;
                    if targetpos.Y > 280 then continue; end;
                    if (targetpos * vector3new(1, 0, 1)).Magnitude > 1200 then continue; end;

                    playercount = playercount + 1;
                    local movel = 0.1;
                    local start = tick();
                    while CanFlingAll and tick() - start < 0.15 do
                        if not LocalRoot.Parent or not targetroot.Parent then break; end;
                        if framework:InMenu(Player) then break; end;

                        LocalRoot.CFrame = targetroot.CFrame;
                        sethiddenproperty(LocalRoot, "PhysicsRepRootPart", targetroot);

                        local vel = LocalRoot.Velocity;
                        LocalRoot.Velocity = vel * 150000 + vector3new(0, 150000, 0);

                        runservice.RenderStepped:Wait();
                        if not CanFlingAll then break; end;

                        LocalRoot.Velocity = vel + vector3new(0, movel, 0);
                        movel = -movel;

                        runservice.Heartbeat:Wait();
                    end;
                end;
                if playercount == 0 then
                    task.wait(0.5);
                end;
            end;
        end));
    end;
});
end;
auto:AddToggle("WhitelistFriends", {
	Text = "whitelist friends";
	Default = false;
	Callback = function(value)
		Toggles.WhitelistFriends.Value = value;
		getgenv().whitelistfriends = v;
	end;
});
auto:AddToggle("autostomp", {
    Text = "auto stomp";
    Default = false;
    Callback = function(Value)
        getgenv().autostompshove = Value;
    end;
});
auto:AddToggle("autoglory", {
    Text = "auto glory";
    Default = false;
    Callback = function(Value)
        getgenv().autoglory = Value;
    end;
});
auto:AddToggle("BeartrapEnemy", {
	Text = "beartrap enemy";
	Default = false;
	Callback = function(v)
		getgenv().BeartrapEnemy = v;
	end;
});
auto:AddToggle("AutoAttachC4", {
	Text = "auto attach c4";
	Default = false;
	Callback = function(v)
		getgenv().AutoAttachC4 = v;
	end;
});
auto:AddToggle("AutoDetonateC4", {
	Text = "auto detonate c4";
	Default = false;
	Callback = function(v)
		getgenv().AutoDetonateC4 = v;
	end;
});
auto:AddToggle('SpamBioRepairSound', {
    Text = 'spam bio-repair pen sound',
    Default = false,
    Tooltip = 'spams bio-repair pen sound (use with tool)',
    Callback = function()
        if Toggles.SpamBioRepairSound.Value then
            workspace.ChildAdded:Connect(function(child)
                if child:IsA("Sound") and child.Name == "jab" then
                    child:Destroy()
                end
            end)
            taskspawn(LPH_JIT_MAX(function()
                local stomp = { Torso = workspace }
                while Toggles.SpamBioRepairSound.Value do
                    modules.Name["VFXClient"].runAndReplicateEffect("HealthPen", {
                        stomp,
                    }, "jab")
                    task.wait(0.01)
                end
            end));
        end
    end
})
auto:AddSlider("stomprange", {
    Text = "stomp range";
    Default = 10;
    Min = 1;
    Max = 10;
    Rounding = 0;
    Compact = true;
	Callback = function(Value)
		getgenv().stompshoverange = Value;
	end;
});
auto:AddSlider("glorydelay", {
    Text = "glory delay";
    Default = 0.5;
    Min = 0.1;
    Max = 1;
    Rounding = 1;
    Compact = true;
	Callback = function(Value)
		getgenv().glorydelay = Value;
	end;
});
auto:AddSlider("gloryrange", {
    Text = "glory range";
    Default = 10;
    Min = 1;
    Max = 10;
    Rounding = 1;
    Compact = true;
	Callback = function(Value)
		getgenv().glorydelay = Value;
	end;
});
-- visuals tab
local visuals = tabs.visuals;
do
	getgenv().lastservercframe = nil;
	getgenv().lastservertime = 0;
	local lastcf = nil;
	local velocity = Vector3.zero;
	servercallback(function(cf)
		local char = localplayer.Character;
		local hrp = char and char:FindFirstChild("HumanoidRootPart");
		if hrp then
			local posdelta = (cf.Position - hrp.Position).Magnitude;
			local dot = cf.LookVector:Dot(hrp.CFrame.LookVector);
			if posdelta < 0.05 and dot > 0.999 then
				return;
			end;
		end;
		if lastcf then
			if (cf.Position - lastcf.Position).Magnitude < 0.001 then
				return;
			end;
		end;
		getgenv().lastservercframe = cf;
		getgenv().lastservertime = os.clock();
		if lastcf then
			velocity = (cf.Position - lastcf.Position);
		end;
		lastcf = cf;
	end);
	local dvclone, dvconnection, partsMap;
	local function createclone(color)
		if dvclone then dvclone:Destroy(); end;
		partsMap = {};
		local char = localplayer.Character;
		if not char then return nil; end;
		char.Archivable = true;
		local clone = char:Clone();
		char.Archivable = false;
		clone.Name = tostring(localplayer.Name);
		for _, v in ipairs(clone:GetDescendants()) do
			if v:IsA("BasePart") then
				local original = char:FindFirstChild(v.Name, true);
				if original and original:IsA("BasePart") then
					partsMap[original] = v;
				end;
				v.CanCollide = false;
				v.CanTouch = false;
				v.CanQuery = false;
				v.Anchored = true;
				v.Massless = true;
				v.Material = Enum.Material.ForceField;
				v.Color = color;
				if v.Name == "HumanoidRootPart" or v.Transparency >= 1 then
					v.Transparency = 1;
				else
					v.Transparency = 0;
				end;
				if v:IsA("MeshPart") then
					v.TextureID = "";
				end;
			elseif v:IsA("SpecialMesh") then
				v.TextureId = "";
			elseif v:IsA("ForceField") then
				v:Destroy();
			elseif v:IsA("Accessory") or v:IsA("Humanoid") or v:IsA("JointInstance") or v:IsA("Script") or v:IsA("LocalScript") or v:IsA("TouchTransmitter") then
				v:Destroy();
			elseif v:IsA("Decal") or v:IsA("Clothing") or v:IsA("ShirtGraphic") then
				v:Destroy();
			end;
		end;
		clone.Parent = workspace.Terrain;
		dvclone = clone;
		return dvclone;
	end;

	charactersection:AddToggle("desyncvisualiser", {
		Text = "desync visualizer";
		Default = false;
		Callback = function(enabled)
			if not enabled then
				if dvconnection then
					dvconnection:Disconnect();
					dvconnection = nil;
				end;
				if dvclone then
					dvclone:Destroy();
					dvclone = nil;
				end;
				partsMap = nil;
				return;
			end;
			
			dvconnection = runservice.Heartbeat:Connect(LPH_JIT_MAX(function(dt)
				local running = getgenv().getrunning;
				local char = localplayer.Character;
				local hrp = char and char:FindFirstChild("HumanoidRootPart");
				if not hrp or not lastcf then 
					if dvclone then dvclone.Parent = nil; end;
					return; 
				end;

				local voidenabled = getgenv().voidenabled;
				local tpenemyactive = (Toggles.tpenemy and Toggles.tpenemy.Value) and (Options.tpenemybind and Options.tpenemybind:GetState()) and (running("CombatTeleport")) and not framework:InMenu(localplayer);
				local killattemptactive = running and running("initattemptkill");
				local avoidprotactive = running("AvoidProjectiles");
				local islogicactive = voidenabled or tpenemyactive or killattemptactive or avoidprotactive;
				
				local isdesynced = false;
				local dist = (hrp.Position - lastcf.Position).Magnitude;
				local dot = hrp.CFrame.LookVector:Dot(lastcf.LookVector);
				if dist > 0.1 or dot < 0.996 then
					isdesynced = true;
				end;

				if islogicactive and isdesynced then
					if not dvclone or not dvclone.Parent then
						local color = (Options.desyncvisualisercolor and Options.desyncvisualisercolor.Value) or Color3.fromRGB(128, 0, 255);
						createclone(color);
					end;
					
					if dvclone then
						dvclone.Parent = workspace.Terrain;
						local color = Options.desyncvisualisercolor.Value;
						local currentHRPVCnf = hrp.CFrame;
						
						for original, clonePart in pairs(partsMap) do
							if original.Parent and clonePart.Parent then
								clonePart.Color = color;
								local offset = currentHRPVCnf:ToObjectSpace(original.CFrame);
								clonePart.CFrame = lastcf * offset;
							else
								partsMap[original] = nil;
							end;
						end;
					end;
				else
					if dvclone then
						dvclone.Parent = nil;
					end;
				end;
			end));
		end;
	}):AddColorPicker("desyncvisualisercolor", {
		Default = Color3.fromRGB(128, 0, 255);
		Title = "visualiser color";
		Transparency = 0;
	});

	localplayer.CharacterAdded:Connect(function()
		if Toggles.desyncvisualiser and Toggles.desyncvisualiser.Value then
			task.wait(0.5);
			createclone(Options.desyncvisualisercolor.Value);
		end;
	end);
end;
charactersection:AddToggle("RainbowCharacter", {
    Text = "rainbow character";
    Default = false;
});
charactersection:AddToggle("OutlineGlow", {
    Text = "outline glow";
    Default = false;
}):AddColorPicker("OutlineGlowColor", {
    Default = Color3.new(1, 1, 1);
    Title = "glow color";
});
charactersection:AddDropdown("CharacterMaterial", {
    Text = "material";
    Default = "Plastic";
    Values = {"ForceField", "Plastic"};
});
charactersection:AddToggle("CustomMaterialColor", {
    Text = "material color";
    Default = false;
}):AddColorPicker("CharacterMaterialColor", {
    Default = Color3.new(1, 1, 1);
    Title = "material color";
});
charactersection:AddSlider("CharacterTransparency", {
    Text = "transparency";
    Default = 0;
    Min = 0;
    Max = 1;
    Rounding = 1;
    Compact = true;
});
charactersection:AddToggle("RemoveAccessories", {
    Text = "remove accessories";
    Default = false;
});

fovsection = visuals:AddLeftGroupbox("fov");
fovsection:AddToggle("ShowFOVCircle", {
    Text = "show fov circle";
    Default = false;
}):AddColorPicker("FOVCircleColor", {
    Default = Color3.new(1, 1, 1);
    Title = "fov color";
});

fovsection:AddToggle("FOVCircleFill", {
    Text = "fill fov";
    Default = false;
}):AddColorPicker("FOVCircleFillColor", {
    Default = Color3.new(1, 1, 1);
    Title = "fill color";
    Transparency = 0.5;
});
fovsection:AddToggle("FOVCircleOutline", {
    Text = "outline";
    Default = false;
}):AddColorPicker("FOVCircleOutlineColor", {
    Default = Color3.new(0, 0, 0);
    Title = "outline color";
});

fovsection:AddSlider("FOVCircleSmoothing", {
    Text = "smoothing";
    Default = 1;
    Min = 1;
    Max = 20;
    Rounding = 0;
    Compact = true;
});
fovsection:AddSlider("FOVCircleSize", {
    Text = "size";
    Default = 100;
    Min = 10;
    Max = 1000;
    Rounding = 0;
    Compact = true;
});
local crosshairsection = visuals:AddRightGroupbox("crosshair");
crosshairsection:AddToggle("CrosshairEnabled", {
    Text = "crosshair enabled";
    Default = false;
}):AddColorPicker("CrosshairColor", {
    Default = Color3.new(1, 1, 1);
    Title = "crosshair color";
});
crosshairsection:AddToggle("CrosshairOutline", {
    Text = "outline";
    Default = false;
});
crosshairsection:AddSlider("CrosshairSize", {
    Text = "size";
    Default = 10;
    Min = 1;
    Max = 50;
    Rounding = 0;
    Compact = true;
});
crosshairsection:AddSlider("CrosshairGap", {
    Text = "gap";
    Default = 5;
    Min = 0;
    Max = 20;
    Rounding = 0;
    Compact = true;
});
crosshairsection:AddSlider("CrosshairThickness", {
    Text = "thickness";
    Default = 1;
    Min = 1;
    Max = 5;
    Rounding = 0;
    Compact = true;
});
crosshairsection:AddSlider("CrosshairSmoothing", {
    Text = "smoothing";
    Default = 1;
    Min = 1;
    Max = 20;
    Rounding = 0;
    Compact = true;
});
crosshairsection:AddToggle("CrosshairSpin", {
    Text = "spin crosshair";
    Default = false;
});
crosshairsection:AddSlider("CrosshairSpinSpeed", {
    Text = "spin speed";
    Default = 1;
    Min = 1;
    Max = 20;
    Rounding = 0;
    Compact = true;
});

local weaponchamssection = visuals:AddRightGroupbox("weapon chams");
weaponchamssection:AddToggle("WeaponChamsEnabled", {
    Text = "weapon chams enabled";
    Default = false;
}):AddColorPicker("WeaponChamsColor", {
    Default = Color3.new(1, 0, 0);
    Title = "chams color";
});
weaponchamssection:AddToggle("WeaponChamsHighlight", {
    Text = "enable highlight";
    Default = false;
}):AddColorPicker("WeaponChamsHighlightColor", {
    Default = Color3.new(1, 0, 0);
    Title = "highlight color";
});
weaponchamssection:AddDropdown("WeaponChamsMaterial", {
    Text = "material";
    Default = "Plastic";
    Values = {"ForceField", "Neon", "Glass", "Plastic"};
});

local lightingsection = visuals:AddRightGroupbox("lightning");
local lightingsection1 = visuals:AddRightGroupbox("fog")
local Lighting = game:GetService("Lighting");
local Map = workspace:FindFirstChild("Map");
if not Lighting:FindFirstChild("atmosphere") then
	Instance.new("Atmosphere", Lighting).Name = "atmosphere";
end;
local originalAtmosphere = {
	Density = Lighting.atmosphere.Density,
	Decay = Lighting.atmosphere.Decay,
	Offset = Lighting.atmosphere.Offset,
	Glare = Lighting.atmosphere.Glare,
	Haze = Lighting.atmosphere.Haze,
};

-- Skyboxes
local Skyboxes = {
	None = {},
	Nebula = {
		SkyboxBk = "rbxassetid://159454299",
		SkyboxDn = "rbxassetid://159454296",
		SkyboxFt = "rbxassetid://159454293",
		SkyboxLf = "rbxassetid://159454286",
		SkyboxRt = "rbxassetid://159454300",
		SkyboxUp = "rbxassetid://159454288",
	},
	Vaporwave = {
		SkyboxBk = "rbxassetid://1417494030",
		SkyboxDn = "rbxassetid://1417494146",
		SkyboxFt = "rbxassetid://1417494253",
		SkyboxLf = "rbxassetid://1417494402",
		SkyboxRt = "rbxassetid://1417494499",
		SkyboxUp = "rbxassetid://1417494643",
	},
	Clouds = {
		SkyboxBk = "rbxassetid://570557514",
		SkyboxDn = "rbxassetid://570557775",
		SkyboxFt = "rbxassetid://570558157",
		SkyboxLf = "rbxassetid://570551248",
		SkyboxRt = "rbxassetid://570557727",
		SkyboxUp = "rbxassetid://570558036",
	},
	Twilight = {
		SkyboxBk = "rbxassetid://2649648296",
		SkyboxDn = "rbxassetid://2649648296",
		SkyboxFt = "rbxassetid://2649648296",
		SkyboxLf = "rbxassetid://2649648296",
		SkyboxRt = "rbxassetid://2649648296",
		SkyboxUp = "rbxassetid://2649648296",
	},
};

-- Lighting UI Elements
lightingsection:AddToggle("Ambience", {
	Text = "world ambience";
	Default = false;
	Tooltip = "Changes ambience";
}):AddColorPicker("AmbienceColor", {
	Default = Color3.new(1, 1, 1);
	Title = "Ambience Color";
	Transparency = 0;
});

lightingsection:AddToggle("ColorCorrection", {
	Text = "color correction";
	Default = false;
	Tooltip = "Changes Color Correction";
}):AddColorPicker("ColorCorrectionColor", {
	Default = Color3.new(1, 1, 1);
	Title = "Color Correction Color";
	Transparency = 0;
});

local hitdetectionsection = visuals:AddRightGroupbox("hit detection");
hitdetectionsection:AddToggle("HitDetectionEnabled", {
    Text = "enabled";
    Default = false;
}):AddColorPicker("HitEffectColor", {
    Default = Color3.new(1, 1, 1);
    Title = "effect color";
});
hitdetectionsection:AddDropdown("HitDetectionType", {
	Text = "detection type";
	Default = "Ranged";
	Values = {"Both", "Melee", "Ranged"};
	Tooltip = "melee works only for killaura";
});
hitdetectionsection:AddDropdown("HitSound", {
    Text = "hit sound";
    Default = "None";
    Values = {"None", "OSU", "Neverlose", "Bameware", "skeet", "Rust", "Lazer Beam", "Bow Hit", "TF2 Hitsound", "TF2 Critical"};
});
hitdetectionsection:AddDropdown("HitEffects", {
    Multi = true;
    Text = "hit effects";
    Default = {};
	Values = {"Clone (Forcefield)", "Clone (Neon)", "Impact", "Pulse", "Fortnite"};
});
hitdetectionsection:AddToggle("HitLogs", {
    Text = "hitlogs";
    Default = false;
}):AddColorPicker("HvhColor", {
    Default = Color3.fromRGB(150, 0, 255);
    Title = ".hvh color";
});
hitdetectionsection:AddSlider("HitSoundVolume", {
	Text = "hit sound volume";
	Default = 1;
	Min = 0.1;
	Max = 10;
	Rounding = 1;
	Compact = true;
});

lightingsection:AddDropdown("Skybox", {
	Text = "skybox";
	Default = "None";
	Values = {"None", "Nebula", "Vaporwave", "Clouds", "Twilight"};
	Tooltip = "Changes Skybox";
});

lightingsection:AddToggle("ClockTime", {
	Text = "clock time";
	Default = false;
	Tooltip = "Changes Clock Time";
});

lightingsection:AddToggle("MaxZoom", {
	Text = "max zoom";
	Default = false;
	Tooltip = "Changes Max Zoom";
});

lightingsection:AddToggle("FieldOfView", {
	Text = "field of view";
	Default = false;
	Tooltip = "Changes FOV";
	Callback = function(Value)
		if not Value then
			camera.FieldOfView = 70;
		end;
	end;
});

lightingsection:AddToggle("NoclipCam", {
	Text = "noclip cam";
	Default = false;
	Tooltip = "Enables camera noclip";
	Callback = function(Value)
		local sc = (debug and debug.setconstant) or setconstant;
		local gc = (debug and debug.getconstants) or getconstants;
		local getgc = (debug and debug.getgc) or getgc;
		local playerScripts = localplayer.PlayerScripts;
		local popper = playerScripts.PlayerModule
			and playerScripts.PlayerModule.CameraModule
			and playerScripts.PlayerModule.CameraModule.ZoomController
			and playerScripts.PlayerModule.CameraModule.ZoomController.Popper;
		local targetValueForNoclipCamOn = 0;
		local targetValueForNoclipCamOff = 0.25;
		local valueToSet = Value and targetValueForNoclipCamOn or targetValueForNoclipCamOff;
		local modified = false;
		for _, v in pairs(getgc()) do
			if type(v) == "function" and getfenv(v).script == popper then
				for i, v1 in pairs(gc(v)) do
					if tonumber(v1) == targetValueForNoclipCamOn or tonumber(v1) == targetValueForNoclipCamOff then
						if tonumber(v1) ~= valueToSet then
							sc(v, i, valueToSet);
							modified = true;
							break;
						end;
					end;
				end;
			end;
			if modified then
				break;
			end;
		end;
	end;
});

lightingsection:AddToggle("Brightness", {
	Text = "brightness";
	Default = false;
	Tooltip = "Changes Brightness";
});

lightingsection:AddToggle("Environmental", {
	Text = "environmental";
	Default = false;
	Tooltip = "Changes Environmental Effects";
});

lightingsection:AddToggle("Exposure", {
	Text = "exposure compensation";
	Default = false;
	Tooltip = "Changes Exposure Effects";
});

lightingsection:AddSlider("Time", {
	Text = "time";
	Default = 12;
	Min = 1;
	Max = 24;
	Rounding = 0;
	Compact = true;
	Tooltip = "The time for Clock Time";
});

lightingsection:AddSlider("FOVLighting", {
	Text = "fov value";
	Default = 70;
	Min = 1;
	Max = 120;
	Rounding = 0;
	Compact = true;
	Tooltip = "Your field of view";
});



lightingsection:AddSlider("BrightnessValue", {
	Text = "brightness";
	Default = 2;
	Min = 1;
	Max = 10;
	Rounding = 0;
	Compact = true;
	Tooltip = "How bright you want it to be";
});

lightingsection:AddSlider("ExposureValue", {
	Text = "exposure";
	Default = 0;
	Min = 0;
	Max = 10;
	Rounding = 1;
	Compact = true;
	Tooltip = "Exposure scale";
});

lightingsection:AddSlider("EnvironmentValue", {
	Text = "diffuse % specular";
	Default = 1;
	Min = 0;
	Max = 1;
	Rounding = 1;
	Compact = true;
	Tooltip = "Effect Scale";
});

lightingsection:AddSlider("MaxZoomVal", {
	Text = "max zoom value";
	Default = 24;
	Min = 1;
	Max = 1000;
	Rounding = 0;
	Compact = true;
	Suffix = " studs";
	Tooltip = "How far you want to zoom out to";
});


lightingsection1:AddToggle("Fog", {
	Text = "fog";
	Default = false;
	Tooltip = "Enables Fog";
}):AddColorPicker("FogColor", {
	Default = Color3.new(1, 1, 1);
	Title = "Fog Color";
	Transparency = 0;
});

lightingsection1:AddSlider("Density", {
	Text = "density";
	Default = 1;
	Min = 0;
	Max = 1;
	Rounding = 2;
	Compact = true;
	Tooltip = "Fog Density";
});

lightingsection1:AddSlider("Glare", {
	Text = "glare";
	Default = 0;
	Min = 0;
	Max = 10;
	Rounding = 0;
	Compact = true;
	Tooltip = "Fog Glare";
});

lightingsection1:AddSlider("Haze", {
	Text = "haze";
	Default = 0;
	Min = 0;
	Max = 10;
	Rounding = 0;
	Compact = true;
	Tooltip = "Fog Haze";
});

-- Add lighting to Classes table
if not Classes.Ambience then
	Classes.Ambience = Toggles.Ambience;
	Classes.AmbienceColor = Options.AmbienceColor;
	Classes.ColorCorrection = Toggles.ColorCorrection;
	Classes.ColorCorrectionColor = Options.ColorCorrectionColor;
	Classes.Skybox = Options.Skybox;
	Classes.ClockTime = Toggles.ClockTime;
	Classes.MaxZoom = Toggles.MaxZoom;
	Classes.FieldOfView = Toggles.FieldOfView;
	Classes.NoclipCam = Toggles.NoclipCam;
	Classes.Brightness = Toggles.Brightness;
	Classes.Environmental = Toggles.Environmental;
	Classes.Exposure = Toggles.Exposure;
	Classes.Time = Options.Time;
	Classes.FOVLighting = Options.FOVLighting;
	Classes.BrightnessValue = Options.BrightnessValue;
	Classes.ExposureValue = Options.ExposureValue;
	Classes.EnvironmentValue = Options.EnvironmentValue;
	Classes.MaxZoomVal = Options.MaxZoomVal;
	Classes.Fog = Toggles.Fog;
	Classes.FogColor = Options.FogColor;
	Classes.Density = Options.Density;
	Classes.Glare = Options.Glare;
	Classes.Haze = Options.Haze;
end;

-- Lighting implementation
local FOVConnection;
FOVConnection = camera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
	if not Active then
		FOVConnection:Disconnect();
		return;
	end;
	if Classes.FieldOfView.Value then
		camera.FieldOfView = Classes.FOVLighting.Value;
	end;
end);

local ColorCorrection = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
	or Instance.new("ColorCorrectionEffect");
ColorCorrection.Parent = Lighting;
local OldCorrection = ColorCorrection.TintColor;
local OldAmbience = Lighting.OutdoorAmbient;
local OldAmbience2 = Lighting.Ambient;
local OldDiffuse = Lighting.EnvironmentDiffuseScale;
local OldDiffuse2 = Lighting.EnvironmentSpecularScale;
local OldBrightness = Lighting.Brightness;
local OldExposure = Lighting.ExposureCompensation;
local OldClock = Lighting.ClockTime;
local OldZoom = localplayer.CameraMaxZoomDistance;

if Map then
	Map.ChildAdded:Connect(function(map)
		task.wait(3);
		if map:GetAttribute("MapId") then
			ColorCorrection = Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
				or Instance.new("ColorCorrectionEffect");
			ColorCorrection.Parent = Lighting;
			OldCorrection = ColorCorrection.TintColor;
			OldAmbience = Lighting.OutdoorAmbient;
			OldAmbience2 = Lighting.Ambient;
			OldDiffuse = Lighting.EnvironmentDiffuseScale;
			OldDiffuse2 = Lighting.EnvironmentSpecularScale;
			OldBrightness = Lighting.Brightness;
			OldExposure = Lighting.ExposureCompensation;
			OldClock = Lighting.ClockTime;
			OldZoom = localplayer.CameraMaxZoomDistance;
		end;
	end);
end;
OldCorrection = ColorCorrection.TintColor;
local lastupdate = 0;
local interval = 3;
local looping = false;
local cachedWaterParts = nil;
local function getWaterParts()
    if cachedWaterParts then return cachedWaterParts end;
    cachedWaterParts = {};
    local mapObj = workspace:FindFirstChild("Map");
    if not mapObj then return cachedWaterParts end;
    for _, v in ipairs(mapObj:GetDescendants()) do
        if v:IsA("BasePart") and v.Name == "WaterArea" then
            table.insert(cachedWaterParts, v);
        end;
    end;
    mapObj.DescendantAdded:Connect(function(v)
        if v:IsA("BasePart") and v.Name == "WaterArea" then
            table.insert(cachedWaterParts, v);
        end;
    end);
    return cachedWaterParts;
end;
framework:BindToRenderStep(LPH_JIT_MAX(function(dt)
    local value = Toggles.walkonwater.Value;
    if value then
        if not looping then
            looping = true;
            lastupdate = interval;
        end;
        lastupdate = lastupdate + dt;
        if lastupdate >= interval then
            lastupdate = 0;
            for _, v in ipairs(getWaterParts()) do
                if v and v.Parent then
                    v.CanCollide = true;
                end;
            end;
        end;
    else
        if looping then
            for _, v in ipairs(getWaterParts()) do
                if v and v.Parent then
                    v.CanCollide = false;
                end;
            end;
            looping = false;
            lastupdate = 0;
        end;
    end;
end));
local ragdolling = false;
framework:BindToRenderStep(LPH_JIT_MAX(function()
        local canragdoll = Toggles.ragdoll.Value;
        if not localplayer.Character then return; end;
        local humanoid = localplayer.Character:FindFirstChild("Humanoid");
        local remote = humanoid and humanoid:FindFirstChild("RagdollRemoteEvent");
        if not remote then return end
        local ragdolled = humanoid:GetAttribute("IsRagdolledServer");
        if canragdoll then
            if not ragdolling then
                ragdolling = true;
            end;
            if not ragdolled then
                remote:FireServer(true);
            end;
        else
            if ragdolling then
                remote:FireServer(false);
                ragdolling = false;
            end;
		end;
		framework:GetSessionData():getState().fallDamageClient.isDisabled = getgenv().nfd;
		if not Lighting:FindFirstChild("atmosphere") then
			Instance.new("Atmosphere", Lighting).Name = "atmosphere";
		end;

		local Sky = Lighting:FindFirstChildOfClass("Sky");
		if not Sky then
			return;
		end;

		local Skybox = Skyboxes[Classes.Skybox.Value];
		if Skybox then
			for i, v in next, Skybox do
				Sky[i] = v;
			end;
		end;

		if Classes.FieldOfView.Value then
			camera.FieldOfView = Classes.FOVLighting.Value;
		end;

		if Classes.Fog.Value then
			Lighting.atmosphere.Density = Classes.Density.Value;
			Lighting.atmosphere.Decay = Classes.FogColor.Value or Color3.new(1, 1, 1);
			Lighting.atmosphere.Offset = 1;
			Lighting.atmosphere.Glare = Classes.Glare.Value;
			Lighting.atmosphere.Haze = Classes.Haze.Value;
		else
			for i, v in pairs(originalAtmosphere) do
				Lighting.atmosphere[i] = v;
			end;
		end;

		if Classes.Ambience.Value then
			Lighting.OutdoorAmbient = Classes.AmbienceColor.Value or Color3.new(1, 1, 1);
			Lighting.Ambient = Classes.AmbienceColor.Value or Color3.new(1, 1, 1);
		else
			Lighting.OutdoorAmbient = OldAmbience;
			Lighting.Ambient = OldAmbience2;
		end;

		if Classes.MaxZoom.Value then
			localplayer.CameraMaxZoomDistance = Classes.MaxZoomVal.Value;
		else
			localplayer.CameraMaxZoomDistance = OldZoom;
		end;

		if Classes.ClockTime.Value then
			Lighting.ClockTime = Classes.Time.Value;
		else
			Lighting.ClockTime = OldClock;
		end;

		if Classes.ColorCorrection.Value then
			ColorCorrection.Enabled = true;
			ColorCorrection.TintColor = Classes.ColorCorrectionColor.Value or Color3.new(1, 1, 1);
		else
			ColorCorrection.Enabled = false;
			ColorCorrection.TintColor = OldCorrection;
		end;

		if Classes.Brightness.Value then
			Lighting.Brightness = Classes.BrightnessValue.Value;
		else
			Lighting.Brightness = OldBrightness;
		end;

		if Classes.Environmental.Value then
			Lighting.EnvironmentDiffuseScale = Classes.EnvironmentValue.Value;
			Lighting.EnvironmentSpecularScale = Classes.EnvironmentValue.Value;
		else
			Lighting.EnvironmentDiffuseScale = OldDiffuse;
			Lighting.EnvironmentSpecularScale = OldDiffuse2;
		end;

		if Classes.Exposure.Value then
			Lighting.ExposureCompensation = Classes.ExposureValue.Value;
		else
			Lighting.ExposureCompensation = OldExposure;
		end;
	end),
	nil,
	Enum.RenderPriority.Last
);
local function esp1()
local GetService = game.GetService
local Service = function(Name)
    return cloneref(GetService(game, Name))
end
local Players = Service("Players")
local RunService = Service("RunService")
local HttpService = Service("HttpService")
local Workspace = Service("Workspace")

local Instance_new = Instance.new
local Color3_fromRGB = Color3.fromRGB
local Color3_new = Color3.new
local Color3_fromHSV = Color3.fromHSV
local Color3_fromHex = Color3.fromHex
local table_clear = table.clear
local table_insert = table.insert
local table_remove = table.remove
local table_unpack = table.unpack
local table_find = table.find
local table_sort = table.sort
local table_concat = table.concat
local string_find = string.find
local string_match = string.match
local string_format = string.format
local string_gsub = string.gsub
local string_lower = string.lower
local string_upper = string.upper
local string_sub = string.sub
local task_wait = task.wait
local task_spawn = task.spawn
local task_delay = task.delay
local task_defer = task.defer
local coroutine_wrap = coroutine.wrap
local coroutine_close = coroutine.close
local coroutine_create = coroutine.create
local coroutine_resume = coroutine.resume
local os_clock = os.clock
local os_date = os_date
local Vector2_new = Vector2.new
local Vector3_new = Vector3.new
local Vector3_one = Vector3.one
local Vector3_zero = Vector3.zero
local UDim2_new = UDim2.new
local UDim2_fromScale = UDim2.fromScale
local UDim2_fromOffset = UDim2.fromOffset
local UDim_new = UDim.new
local CFrame_Angles = CFrame.Angles
local CFrame_new = CFrame.new
local math_clamp = math.clamp
local math_round = math.round
local math_floor = math.floor
local math_huge = math.huge
local math_sin = math.sin
local math_min = math.min
local math_max = math.max
local math_random = math.random
local Drawing_new = Drawing.new
local Rect_new = Rect.new
local Font_new = Font.new
local ColorSequence_new = ColorSequence.new
local ColorSequenceKeypoint_new = ColorSequenceKeypoint.new
local TweenInfo_new = TweenInfo.new
local NumberSequence_new = NumberSequence.new
local NumberSequenceKeypoint_new = NumberSequenceKeypoint.new
local FindFirstChild = game.FindFirstChild
local GetChildren = game.GetChildren
local GetDescendants = game.GetDescendants
local WaitForChild = game.WaitForChild
local FindFirstChildWhichIsA = game.FindFirstChildWhichIsA
local IsA = game.IsA

getgenv().ESP = {
    Settings = {
        Enabled = false,
        LocalPlayer = false,

        Font = "Tahoma",
        FontSize = 15,
        FontType = "lowercase", -- uppercase, lowercase, none

        MaxDistance = 1000,

        BoundingBox = {
            Enabled = false,
            DynamicBox = false, -- may drop fps
            IncludeAccessories = false,
            
            Rotation = 90,
            Color = {Color3_fromRGB(105, 187, 245), Color3_fromRGB(105, 187, 245)},
            Transparency = {0, 0},

            Glow = {
                Enabled = false,
                Rotation = 90,
                Color = {Color3_fromRGB(105, 187, 245), Color3_fromRGB(105, 187, 245)},
                Transparency = {0.75, 0.75},
            },

            Fill = {
                Enabled = false,
                Rotation = 90,
                Color = {Color3_fromRGB(105, 187, 245), Color3_fromRGB(105, 187, 245)},
                Transparency = {1, 0.5},
            },
        },

        Bars = {
            HealthBar = {
                Enabled = false,
                Position = "Left",
                Color = {Color3_fromRGB(131, 245, 78), Color3_fromRGB(255, 255, 0), Color3_fromRGB(252, 71, 77)},

                Type = function(Player, TargetInfo)
                    return TargetInfo.HealthBarValue or 1
                end,

                Text = {
                    Enabled = false,
                    FollowBar = true,
                    Ending = "",
                    Position = "Left", -- // will ignore if FollowBar is true
                    Color = Color3_fromRGB(255, 255, 255),
                    Transparency = 0,

                    Type = function(Player, TargetInfo)
                        local health = TargetInfo.LastHealth or 100
                        local maxHealth = TargetInfo.LastMaxHealth or 100
                        return health, health ~= maxHealth -- Value the text follows, Value the text turns visible if follow bar is on
                    end,
                },
            },

            ArmorBar = {
                Enabled = false,
                Position = "Bottom",
                Color = {Color3_fromRGB(52, 131, 235), Color3_fromRGB(52, 131, 235), Color3_fromRGB(52, 131, 235)},

                Type = function(Player, TargetInfo)
                    return TargetInfo.HealthBarValue or 1
                end,

                Text = {
                    Enabled = false,
                    FollowBar = true,
                    Ending = "%",
                    Position = "Left", -- // will ignore if FollowBar is true
                    Color = Color3_fromRGB(255, 255, 255),
                    Transparency = 0,

                    Type = function(Player, TargetInfo)
                        local health = TargetInfo.LastHealth or 100
                        local maxHealth = TargetInfo.LastMaxHealth or 100
                        return health, health ~= maxHealth -- value the text follows, value the text turns visible if follow bar is on
                    end,
                },
            },
        },

        Name = {
            Enabled = false,
            UseDisplay = false,
            Position = "Top",
            Color = Color3_fromRGB(255, 255, 255),
            Transparency = 0,
        },

        Distance = {
            Enabled = false,
            Ending = "st",
            Position = "Bottom",
            Color = Color3_fromRGB(255, 255, 255),
            Transparency = 0,
        },

        Weapon = {
            Enabled = false,
            Position = "Bottom",
            Color = Color3_fromRGB(255, 255, 255),
            Transparency = 0,
        },

        Flags = {
            Enabled = false,
            Position = "Right",
            Color = Color3_fromRGB(255, 255, 255),
            Transparency = 0,

            Type = function(Player, TargetInfo)
                local currentTick = os_clock()
                if currentTick - TargetInfo.FlagsDelay < 0.25 then
                    return TargetInfo.CachedFlagsString or ""
                end
                
                TargetInfo.FlagsDelay = currentTick
                local Flags = {}

                if not IsA(Player, "Player") then 
                    TargetInfo.CachedFlagsString = ""
                    return "" 
                end

                local Character = Player.Character
                local Humanoid = Character and Character:FindFirstChild("Humanoid")
                if not Humanoid then 
                    TargetInfo.CachedFlagsString = ""
                    return "" 
                end

                if Humanoid.MoveDirection.Magnitude > 0 then
                    table_insert(Flags, "moving")
                end

                if Humanoid.Jump then
                    table_insert(Flags, "jumping")
                end

                TargetInfo.CachedFlagsString = table_concat(Flags, "\n")
                return TargetInfo.CachedFlagsString
            end
        },
    },

    Connections = {},
    Errors = {},
    Objects = {},
    Targets = {},
    Folder = "ESP",
    Font = nil,
    Holder = nil,
}

local Client = Players.LocalPlayer
local Camera = FindFirstChildWhichIsA(Workspace, "Camera")
local Viewport = Camera.ViewportSize
local ConnectionsTable = ESP.Connections
local ObjectsTable = ESP.Objects
local FolderLocation = ESP.Folder
local ESPErrors = ESP.Errors
local ESPSettings = ESP.Settings
local WorldToViewportPoint = Camera.WorldToViewportPoint

local Utility = {}
local FontsToDownload = {
    ["Tahoma"] = {Link = "https://github.com/LuckyHub1/LuckyHub/raw/main/zekton_rg.ttf"},
    ["Minecraftia"] = {Link = "https://github.com/LuckyHub1/LuckyHub/raw/refs/heads/main/Minecraftia.ttf"},
    ["Silkscreen"] = {Link = "https://github.com/LuckyHub1/LuckyHub/raw/refs/heads/main/Silkscreen.ttf"},
}

do -- Folders
    if not isfolder(FolderLocation) then
        makefolder(FolderLocation)
    end

    if not isfolder(FolderLocation .. "\\Fonts") then
        makefolder(FolderLocation .. "\\Fonts")
    end
end

do -- Fonts
    for Name, Table in FontsToDownload do
        if not isfile(FolderLocation .. "\\Fonts\\" .. Name .. ".ttf") then
            writefile(FolderLocation .. "\\Fonts\\" .. Name .. ".ttf", game:HttpGet(Table.Link))
        end
        
        if not isfile(FolderLocation .. "\\Fonts\\" .. Name .. ".font") then
            local Config = {
                name = Name,
                faces = {{
                    name = "Regular",
                    weight = 9e9,
                    style = "normal",
                    assetId = getcustomasset(FolderLocation .. "\\Fonts\\" .. Name .. ".ttf")
                }}
            }
            
            writefile(FolderLocation .. "\\Fonts\\" .. Name .. ".font", HttpService:JSONEncode(Config))
        end
    end

    if not getgenv().Fonts then
        getgenv().Fonts = {
            Loaded = {}
        }

        for _, FontPath in listfiles(FolderLocation .. "\\Fonts") do
            local Name = string_match(FontPath, FolderLocation .. "\\Fonts\\(.+)%.font")

            if Name then
                Fonts.Loaded[Name] = Font_new(getcustomasset(FontPath), Enum.FontWeight.Regular)
            end
        end
    end
end

do -- Utility
    function Utility.AddConnection(Signal, Function)
        local Connection = Signal:Connect(function(...)
            local Args = {...}
            
            local Success, Message = pcall(function() coroutine_wrap(Function)(table_unpack(Args)) end)
            
            if not Success and not ESPErrors[Message] then
                local ErrorMessage = string_format("[ERROR] | An error has occured:\n%s", Message)

                warn(ErrorMessage)
                
                ESPErrors[Message] = Message
                
                if ConnectionsTable[Connection] then
                    ConnectionsTable[Connection] = nil
                end
                
                return Connection and Connection:Disconnect()
            end
        end)
        
        if Connection and ConnectionsTable then
            table_insert(ConnectionsTable, Connection)
        end
        
        return Connection
    end

    function Utility.CreateObject(Type, Properties, Hidden)
        local Hidden = Hidden or false
        local Object = Instance_new(Type)

        for Index, Value in Properties do
            Object[Index] = Value
        end

        table_insert(ObjectsTable, Object)

        return Object
    end

    function Utility.CalculateBox(Target, RootPart, Parts)
        local MinX, MinY, MaxX, MaxY = 9000, 9000, -9000, -9000
        local BoxWidth, BoxHeight = 0, 0
        local Position, OnScreen = WorldToViewportPoint(Camera, RootPart.Position)

        if ESPSettings.BoundingBox.DynamicBox then
            for _, Part in Parts do
                if Part.ClassName ~= "HumanoidRootPart" and (Part:IsA("BasePart")) then
                    local Size = Part.Size / 2
                    local CFrame = Part.CFrame
                    
                    local Top, TopOnScreen = WorldToViewportPoint(Camera, (CFrame * CFrame.new(0, Size.Y, 0)).Position)
                    local Bottom, BottomOnScreen = WorldToViewportPoint(Camera, (CFrame * CFrame.new(0, -Size.Y, 0)).Position)

                    if TopOnScreen or BottomOnScreen then
                        local Height = math_abs(Top.Y - Bottom.Y)
                        local Width = Height * (Size.X / Size.Y)
                        
                        local Center = (Top + Bottom) / 2
                        
                        MinX = math_min(MinX, Center.X - Width)
                        MinY = math_min(MinY, Center.Y - Height)
                        MaxX = math_max(MaxX, Center.X + Width)
                        MaxY = math_max(MaxY, Center.Y + Height)
                    end
                end
            end
            
            BoxWidth, BoxHeight = MaxX - MinX, MaxY - MinY
        else
            local Scale = (RootPart.Size.Y * Camera.ViewportSize.Y) / (Position.Z * 2)

            BoxWidth, BoxHeight = 3 * Scale, 4.5 * Scale
            MinX, MinY = Position.X - (BoxWidth / 2), Position.Y - (BoxHeight / 2)
        end

        return BoxWidth, BoxHeight, MinX, MinY, OnScreen
    end

    function Utility.GetFontType(Text)
        local FontType = string_lower(ESPSettings.FontType)

        if FontType == "uppercase" then
            return string_upper(Text)
        elseif FontType == "lowercase" then
            return string_lower(Text)
        else
            return Text
        end
    end
end
Utility.AddConnection(Camera:GetPropertyChangedSignal("ViewportSize"), function()
    Viewport = Camera.ViewportSize
end)
do -- Functions
    ESP.Font = Fonts.Loaded[ESPSettings.Font]
    ESP.Holder = Utility.CreateObject("ScreenGui", {
		Name = "\n",
		ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets,
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		ResetOnSpawn = false,
		DisplayOrder = 1,
		IgnoreGuiInset = true,
		Parent = gethui()
	})

    function ESP.AddTarget(Target)
        if ESP.Targets[Target] then return end

        local TargetInfo = {
            Objects = {},
            CharacterObjects = {},
            CharacterConnection = nil,
            HealthConnection = nil,
            ToolConnection = {Added = nil, Removed = nil},
            CurrentTool = Utility.GetFontType("none"),
            TargetName = Utility.GetFontType(if ESPSettings.Name.UseDisplay then (IsA(Target, "Player") and Target.DisplayName or Target.Name) else Target.Name),
            DistanceEnding = Utility.GetFontType(ESPSettings.Distance.Ending),
            HealthBarValue = 1,
            LastHealth = 100,
            LastMaxHealth = 100,
            FlagsDelay = 0,
            CachedFlagsString = "",
            LastTick = os_clock(),
            LastLazyUpdate = 0,
            LastDistanceText = "",
            LastDistanceValue = -1,
        }

        local Objects = TargetInfo.Objects
        local LastTick = TargetInfo.LastTick
        local ToolConnection = TargetInfo.ToolConnection
        local CharacterObjects = TargetInfo.CharacterObjects
        local ESPFont = ESP.Font
        local ESPFontSize = ESPSettings.FontSize
        local ESPHolder = ESP.Holder
        local TextAlignments = {
            ["Left"] = "Right",
            ["Right"] = "Left",
            ["Top"] = "Center",
            ["Bottom"] = "Center",
        }

        CharacterObjects.Character = if IsA(Target, "Player") then Target.Character else Target
        CharacterObjects.Children = if CharacterObjects.Character then CharacterObjects.Character:GetChildren() else {}
        CharacterObjects.Descendants = if CharacterObjects.Character then CharacterObjects.Character:GetDescendants() else {}

        if IsA(Target, "Player") then
            CharacterObjects.HumanoidRootPart = if CharacterObjects.Character then CharacterObjects.Character:FindFirstChild("HumanoidRootPart") else nil
            CharacterObjects.Humanoid = if CharacterObjects.Character then CharacterObjects.Character:FindFirstChildWhichIsA("Humanoid") else nil
        end

        do -- Functions
            function TargetInfo.Init()
                if #Objects > 0 then return end

                if IsA(Target, "Player") then
                    TargetInfo.CharacterConnection = Utility.AddConnection(Target.CharacterAdded, function(Character)
                        CharacterObjects.Character = Character
                        CharacterObjects.HumanoidRootPart = Character:WaitForChild("HumanoidRootPart", 10)
                        
                        local Humanoid = Character:WaitForChild("Humanoid", 10)
                        CharacterObjects.Humanoid = Humanoid
                        CharacterObjects.Children = Character:GetChildren()
                        CharacterObjects.Descendants = Character:GetDescendants()

                        if TargetInfo.HealthConnection then TargetInfo.HealthConnection:Disconnect() end
                        if Humanoid then
                            TargetInfo.LastHealth = Humanoid.Health
                            TargetInfo.LastMaxHealth = Humanoid.MaxHealth
                            TargetInfo.HealthBarValue = TargetInfo.LastHealth / TargetInfo.LastMaxHealth

                            TargetInfo.HealthConnection = Utility.AddConnection(Humanoid.HealthChanged, function(Health)
                                TargetInfo.LastHealth = Health
                                TargetInfo.LastMaxHealth = Humanoid.MaxHealth
                                TargetInfo.HealthBarValue = TargetInfo.LastHealth / TargetInfo.LastMaxHealth
                            end)
                        end
                        
                        if ToolConnection.Added then ToolConnection.Added:Disconnect() end
                        if ToolConnection.Removed then ToolConnection.Removed:Disconnect() end
                        TargetInfo.CurrentTool = Utility.GetFontType("none")
                        local existingTool = Character:FindFirstChildWhichIsA("Tool")
                        if existingTool then
                            TargetInfo.CurrentTool = Utility.GetFontType(existingTool.Name)
                        end
                        
                        ToolConnection.Added = Utility.AddConnection(Character.ChildAdded, function(Child)
                            if IsA(Child, "Tool") then 
                                TargetInfo.CurrentTool = Utility.GetFontType(Child.Name)
                            end 
                        end)
                        
                        ToolConnection.Removed = Utility.AddConnection(Character.ChildRemoved, function(Child)
                            if IsA(Child, "Tool") then 
                                TargetInfo.CurrentTool = Utility.GetFontType("none")
                            end 
                        end)
                    end)

                    if CharacterObjects.Character then
                        local Humanoid = CharacterObjects.Character:FindFirstChildWhichIsA("Humanoid")
                        if Humanoid then
                            TargetInfo.LastHealth = Humanoid.Health
                            TargetInfo.LastMaxHealth = Humanoid.MaxHealth
                            TargetInfo.HealthBarValue = TargetInfo.LastHealth / TargetInfo.LastMaxHealth
                            
                            if TargetInfo.HealthConnection then TargetInfo.HealthConnection:Disconnect() end
                            TargetInfo.HealthConnection = Utility.AddConnection(Humanoid.HealthChanged, function(Health)
                                TargetInfo.LastHealth = Health
                                TargetInfo.LastMaxHealth = Humanoid.MaxHealth
                                TargetInfo.HealthBarValue = TargetInfo.LastHealth / TargetInfo.LastMaxHealth
                            end)
                        end

                        TargetInfo.CurrentTool = Utility.GetFontType("none")
                        local existingTool = CharacterObjects.Character:FindFirstChildWhichIsA("Tool")
                        if existingTool then
                            TargetInfo.CurrentTool = Utility.GetFontType(existingTool.Name)
                        end

                        ToolConnection.Added = Utility.AddConnection(CharacterObjects.Character.ChildAdded, function(Child)
                            if IsA(Child, "Tool") then 
                                TargetInfo.CurrentTool = Utility.GetFontType(Child.Name)
                            end 
                        end)
                        
                        ToolConnection.Removed = Utility.AddConnection(CharacterObjects.Character.ChildRemoved, function(Child)
                            if IsA(Child, "Tool") then 
                                TargetInfo.CurrentTool = Utility.GetFontType("none")
                            end 
                        end)
                    end
                end

                Objects["TargetHolder"] = Utility.CreateObject("Frame", {Parent = ESPHolder, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                Objects["TopHolder"] = Utility.CreateObject("Frame", {Parent = Objects["TargetHolder"], AutomaticSize = Enum.AutomaticSize.Y, Visible = true, BackgroundTransparency = 1, AnchorPoint = Vector2_new(0, 1), Position = UDim2_new(0, -2, 0, -5), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 4, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                Objects["BottomHolder"] = Utility.CreateObject("Frame", {Parent = Objects["TargetHolder"], AutomaticSize = Enum.AutomaticSize.Y, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(0, -2, 1, 3), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 4, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                Objects["LeftHolder"] = Utility.CreateObject("Frame", {Parent = Objects["TargetHolder"], AutomaticSize = Enum.AutomaticSize.X, Visible = true, BackgroundTransparency = 1, AnchorPoint = Vector2_new(1, 0), Position = UDim2_new(0, -4, 0, -2), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 1, 4), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                Objects["RightHolder"] = Utility.CreateObject("Frame", {Parent = Objects["TargetHolder"], AutomaticSize = Enum.AutomaticSize.X, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(1, 8, 0, -2), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 1, 4), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                
                do -- Text Holders
                    Objects["TopTextHolder"] = Utility.CreateObject("Frame", {Parent = Objects["TopHolder"], AutomaticSize = Enum.AutomaticSize.Y, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["TopTextHolder"], VerticalAlignment = Enum.VerticalAlignment.Bottom, HorizontalAlignment = Enum.HorizontalAlignment.Center, Padding = UDim_new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["TopTextHolder"], PaddingBottom = UDim_new(0, 2)})

                    Objects["BottomTextHolder"] = Utility.CreateObject("Frame", {Parent = Objects["BottomHolder"], LayoutOrder = 2, AutomaticSize = Enum.AutomaticSize.Y, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["BottomTextHolder"], HorizontalAlignment = Enum.HorizontalAlignment.Center, Padding = UDim_new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["BottomTextHolder"], PaddingTop = UDim_new(0, 2)})

                    Objects["LeftTextHolder"] = Utility.CreateObject("Frame", {Parent = Objects["LeftHolder"], AutomaticSize = Enum.AutomaticSize.XY, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["LeftTextHolder"], HorizontalAlignment = Enum.HorizontalAlignment.Right, Padding = UDim_new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["LeftTextHolder"], PaddingTop = UDim_new(0, -3)})

                    Objects["RightTextHolder"] = Utility.CreateObject("Frame", {Parent = Objects["RightHolder"], LayoutOrder = 2, AutomaticSize = Enum.AutomaticSize.XY, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["RightTextHolder"], HorizontalAlignment = Enum.HorizontalAlignment.Left, Padding = UDim_new(0, 0), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["RightTextHolder"], PaddingTop = UDim_new(0, -3)})
                end

                do -- Bar Holders
                    Objects["TopBarHolder"] = Utility.CreateObject("Frame", {Visible = false, Parent = Objects["TopHolder"], AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["TopBarHolder"], HorizontalAlignment = Enum.HorizontalAlignment.Center, Padding = UDim_new(0, 1), VerticalAlignment = Enum.VerticalAlignment.Bottom, SortOrder = Enum.SortOrder.LayoutOrder})

                    Objects["BottomBarHolder"] = Utility.CreateObject("Frame", {Visible = false, Parent = Objects["BottomHolder"], AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["BottomBarHolder"], HorizontalAlignment = Enum.HorizontalAlignment.Center, Padding = UDim_new(0, 1), VerticalAlignment = Enum.VerticalAlignment.Bottom, SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["BottomBarHolder"], PaddingTop = UDim_new(0, 2)})

                    Objects["LeftBarHolder"] = Utility.CreateObject("Frame", {Visible = false, Parent = Objects["LeftHolder"], AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["LeftBarHolder"], FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Right, Padding = UDim_new(0, 1), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["LeftBarHolder"], PaddingRight = UDim_new(0, 1)})

                    Objects["RightBarHolder"] = Utility.CreateObject("Frame", {Visible = false, Parent = Objects["RightHolder"], AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 1, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["RightBarHolder"], FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Left, Padding = UDim_new(0, 1), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["RightBarHolder"], PaddingLeft = UDim_new(0, -3)})
                end
                
                do -- List Layouts
                    Utility.CreateObject("UIListLayout", {Parent = Objects["TopHolder"], VerticalAlignment = Enum.VerticalAlignment.Bottom, Padding = UDim_new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["BottomHolder"], Padding = UDim_new(0, 1), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIPadding", {Parent = Objects["LeftHolder"], PaddingRight = UDim_new(0, 1)})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["LeftHolder"], FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Left, Padding = UDim_new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder})
                    Utility.CreateObject("UIListLayout", {Parent = Objects["RightHolder"], FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Left, Padding = UDim_new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder})
                end

                do -- Box
                    Objects["BoxGlow"] = Utility.CreateObject("ImageLabel", {Parent = Objects["TargetHolder"], Image = "rbxassetid://110204605000367", ScaleType = Enum.ScaleType.Slice, SliceCenter = Rect_new(Vector2_new(21, 21), Vector2_new(79, 79)), AutomaticSize = Enum.AutomaticSize.XY, ImageTransparency = 0.65, ResampleMode = Enum.ResamplerMode.Pixelated, Visible = true, BackgroundTransparency = 1, Position = UDim2_new(0, -21, 0, -21), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Objects["BoxGlowGradient"] = Utility.CreateObject("UIGradient", {Parent = Objects["BoxGlow"], Rotation = 90, Color = ColorSequence_new{ColorSequenceKeypoint_new(0, Color3_fromRGB(0, 0, 0)), ColorSequenceKeypoint_new(1, Color3_fromRGB(0, 0, 0))}, Transparency = NumberSequence_new{NumberSequenceKeypoint_new(0, 0), NumberSequenceKeypoint_new(1, 0)}})
                    Utility.CreateObject("UIPadding", {Parent = Objects["BoxGlow"], PaddingTop = UDim_new(0, 21), PaddingBottom = UDim_new(0, 20), PaddingLeft = UDim_new(0, 21), PaddingRight = UDim_new(0, 20)})

                    Objects["BoxOutlineHolder"] = Utility.CreateObject("Frame", {Parent = Objects["BoxGlow"], Visible = false, BackgroundTransparency = 1, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Objects["BoxOutline"] = Utility.CreateObject("UIStroke", {Parent = Objects["BoxOutlineHolder"], Thickness = 3, LineJoinMode = Enum.LineJoinMode.Miter})
                    Objects["BoxOutlineGradient"] = Utility.CreateObject("UIGradient", {Parent = Objects["BoxOutline"], Rotation = 90, Color = ColorSequence_new{ColorSequenceKeypoint_new(0, Color3_fromRGB(0, 0, 0)), ColorSequenceKeypoint_new(1, Color3_fromRGB(0, 0, 0))}, Transparency = NumberSequence_new{NumberSequenceKeypoint_new(0, 0), NumberSequenceKeypoint_new(1, 0)}})

                    Objects["BoxInlineHolder"] = Utility.CreateObject("Frame", {Parent = Objects["BoxGlow"], Visible = false, BackgroundTransparency = 1, Position = UDim2_new(0, -1, 0, -1), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Objects["BoxInline"] = Utility.CreateObject("UIStroke", {Parent = Objects["BoxInlineHolder"], Color = Color3_fromRGB(255, 255, 255), LineJoinMode = Enum.LineJoinMode.Miter})
                    Objects["BoxInlineGradient"] = Utility.CreateObject("UIGradient", {Parent = Objects["BoxInline"], Rotation = 90, Color = ColorSequence_new{ColorSequenceKeypoint_new(0, Color3_fromRGB(0, 0, 0)), ColorSequenceKeypoint_new(1, Color3_fromRGB(255, 255, 255))}, Transparency = NumberSequence_new{NumberSequenceKeypoint_new(0, 0), NumberSequenceKeypoint_new(1, 0)}})

                    Objects["BoxFill"] = Utility.CreateObject("Frame", {Parent = Objects["BoxGlow"], Visible = false, BackgroundTransparency = 0, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(0, 0, 0, 0), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                    Objects["BoxFillGradient"] = Utility.CreateObject("UIGradient", {Parent = Objects["BoxFill"], Rotation = 90, Color = ColorSequence_new{ColorSequenceKeypoint_new(0, Color3_fromRGB(0, 0, 0)), ColorSequenceKeypoint_new(1, Color3_fromRGB(255, 255, 255))}, Transparency = NumberSequence_new{NumberSequenceKeypoint_new(0, 1), NumberSequenceKeypoint_new(1, 1)}})
                end

                do -- Bars
                    for BarName, Bar in ESPSettings.Bars do
                        Objects[BarName .. "Outline"] = Utility.CreateObject("Frame", {Parent = Objects[Bar.Position .. "BarHolder"], ZIndex = 5, LayoutOrder = 0, Visible = true, BackgroundTransparency = 0, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(0, 0, 0)})
                        Utility.CreateObject("UIStroke", {Parent = Objects[BarName .. "Outline"], Thickness = 1, LineJoinMode = Enum.LineJoinMode.Miter})

                        Objects[BarName] = Utility.CreateObject("Frame", {Parent = Objects[BarName .. "Outline"], ZIndex = 6, LayoutOrder = 0, Visible = true, BackgroundTransparency = 0, Position = UDim2_new(0, 0, 0, 0), BorderColor3 = Color3_fromRGB(0, 0, 0), Size = UDim2_new(1, 0, 0, 1), BorderSizePixel = 0, BackgroundColor3 = Color3_fromRGB(255, 255, 255)})
                        Objects[BarName .. "Gradient"] = Utility.CreateObject("UIGradient", {Parent = Objects[BarName], Rotation = 90, Color = ColorSequence_new{ColorSequenceKeypoint_new(0, Color3_fromRGB(0, 0, 0)), ColorSequenceKeypoint_new(0, Color3_fromRGB(0, 0, 0)), ColorSequenceKeypoint_new(1, Color3_fromRGB(255, 255, 255))}, Transparency = NumberSequence_new{NumberSequenceKeypoint_new(0, 0), NumberSequenceKeypoint_new(1, 0)}})
                    
                        Objects[BarName .. "Text"] = Utility.CreateObject("TextLabel", {
                            Parent = Objects[Bar.Position .. "TextHolder"],
                            FontFace = ESPFont,
                            TextSize = ESPFontSize,
                            LayoutOrder = 2,
                            TextColor3 = Color3_fromRGB(255, 255, 255),
                            Text = "",
                            AnchorPoint = Vector2_new(0, 1),
                            BorderSizePixel = 0,
                            Visible = true,
                            BackgroundTransparency = 1,
                            ZIndex = 5,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Size = UDim2_new(1, 0, 0, 0)
                        }); Utility.CreateObject("UIStroke", {Parent = Objects[BarName .. "Text"], Color = Color3_fromRGB(0, 0, 0), LineJoinMode = Enum.LineJoinMode.Miter})
                    end
                end

                do -- Texts
                    Objects["TargetName"] = Utility.CreateObject("TextLabel", {
                        Parent = Objects["TopTextHolder"],
                        FontFace = ESPFont,
                        TextSize = ESPFontSize,
                        LayoutOrder = 2,
                        TextColor3 = Color3_fromRGB(255, 255, 255),
                        Text = "",
                        AnchorPoint = Vector2_new(0, 1),
                        BorderSizePixel = 0,
                        Visible = true,
                        BackgroundTransparency = 1,
                        ZIndex = 5,
                        AutomaticSize = Enum.AutomaticSize.Y,
                        Size = UDim2_new(1, 0, 0, 0)
                    }); Utility.CreateObject("UIStroke", {Parent = Objects["TargetName"], Color = Color3_fromRGB(0, 0, 0), LineJoinMode = Enum.LineJoinMode.Miter})

                    Objects["Distance"] = Utility.CreateObject("TextLabel", {
                        Parent = Objects["BottomTextHolder"],
                        FontFace = ESPFont,
                        TextSize = ESPFontSize,
                        LayoutOrder = 2,
                        TextColor3 = Color3_fromRGB(255, 255, 255),
                        Text = "",
                        AnchorPoint = Vector2_new(0, 1),
                        BorderSizePixel = 0,
                        Visible = true,
                        BackgroundTransparency = 1,
                        ZIndex = 5,
                        AutomaticSize = Enum.AutomaticSize.Y,
                        Size = UDim2_new(1, 0, 0, 0)
                    }); Utility.CreateObject("UIStroke", {Parent = Objects["Distance"], Color = Color3_fromRGB(0, 0, 0), LineJoinMode = Enum.LineJoinMode.Miter})

                    Objects["Flags"] = Utility.CreateObject("TextLabel", {
                        Parent = Objects["RightTextHolder"],
                        FontFace = ESPFont,
                        TextSize = ESPFontSize,
                        LayoutOrder = 2,
                        TextColor3 = Color3_fromRGB(255, 255, 255),
                        Text = "",
                        AnchorPoint = Vector2_new(0, 1),
                        BorderSizePixel = 0,
                        Visible = true,
                        BackgroundTransparency = 1,
                        ZIndex = 5,
                        AutomaticSize = Enum.AutomaticSize.Y,
                        Size = UDim2_new(1, 0, 0, 0)
                    }); Utility.CreateObject("UIStroke", {Parent = Objects["Flags"], Color = Color3_fromRGB(0, 0, 0), LineJoinMode = Enum.LineJoinMode.Miter})

                    Objects["Weapon"] = Utility.CreateObject("TextLabel", {
                        Parent = Objects["BottomTextHolder"],
                        FontFace = ESPFont,
                        TextSize = ESPFontSize,
                        LayoutOrder = 2,
                        TextColor3 = Color3_fromRGB(255, 255, 255),
                        Text = "none",
                        AnchorPoint = Vector2_new(0, 1),
                        BorderSizePixel = 0,
                        Visible = true,
                        BackgroundTransparency = 1,
                        ZIndex = 5,
                        AutomaticSize = Enum.AutomaticSize.Y,
                        Size = UDim2_new(1, 0, 0, 0)
                    }); Utility.CreateObject("UIStroke", {Parent = Objects["Weapon"], Color = Color3_fromRGB(0, 0, 0), LineJoinMode = Enum.LineJoinMode.Miter})
                end

                ESP.Targets[Target] = TargetInfo
            end

            function TargetInfo.Update()
                if (not ESPSettings.LocalPlayer) and Target == Client then 
                    Objects["TargetHolder"].Visible = false
                    return 
                end
                if not CharacterObjects.Character then 
                    Objects["TargetHolder"].Visible = false
                    return 
                end
                
                if IsA(Target, "Player") then
                    if not CharacterObjects.HumanoidRootPart then
                        CharacterObjects.HumanoidRootPart = FindFirstChild(CharacterObjects.Character, "HumanoidRootPart")
                        Objects["TargetHolder"].Visible = false
                        return
                    end
                    
                    if not CharacterObjects.Humanoid then
                        CharacterObjects.Humanoid = FindFirstChildWhichIsA(CharacterObjects.Character, "Humanoid")
                        Objects["TargetHolder"].Visible = false
                        return
                    end
                else
                    if not CharacterObjects.HumanoidRootPart then
                        CharacterObjects.HumanoidRootPart = IsA(Target, "BasePart") and Target or CharacterObjects.Character.PrimaryPart
                        if not CharacterObjects.HumanoidRootPart then 
                            Objects["TargetHolder"].Visible = false
                            return 
                        end
                    end
                end

                local Distance = (Camera.CFrame.Position - CharacterObjects.HumanoidRootPart.Position).Magnitude
                if Distance > ESPSettings.MaxDistance then 
                    Objects["TargetHolder"].Visible = false
                    return 
                end

                local BodyParts = nil
                if ESPSettings.BoundingBox.DynamicBox then
                    BodyParts = if ESPSettings.BoundingBox.IncludeAccessories then CharacterObjects.Descendants else CharacterObjects.Children
                    if IsA(Target, "BasePart") then BodyParts = {Target} end
                end
                
                local BoxWidth, BoxHeight, BoxPositionX, BoxPositionY, OnScreen = Utility.CalculateBox(Target, CharacterObjects.HumanoidRootPart, BodyParts)
                if not OnScreen then 
                    Objects["TargetHolder"].Visible = false
                    return 
                end


                local BoxSize, BoxPosition = UDim2_fromOffset(math_floor(BoxWidth), math_floor(BoxHeight)), UDim2_fromOffset(math_floor(BoxPositionX), math_floor(BoxPositionY))
                local TargetHolder = Objects["TargetHolder"]; do
                    if not TargetHolder.Visible then TargetHolder.Visible = true end
                    if TargetHolder.Position ~= BoxPosition then TargetHolder.Position = BoxPosition end
                    if TargetHolder.Size ~= BoxSize then TargetHolder.Size = BoxSize end
                end

                local BoxOutline, BoxInline, BoxFill, BoxGlow = Objects["BoxOutline"], Objects["BoxInline"], Objects["BoxFill"], Objects["BoxGlow"]; do
                    local BoxEnabled, BoxColor, BoxTransparency, BoxRotation = ESPSettings.BoundingBox.Enabled, ESPSettings.BoundingBox.Color, ESPSettings.BoundingBox.Transparency, ESPSettings.BoundingBox.Rotation

                    if BoxEnabled then
                        if not BoxOutline.Parent.Visible then BoxOutline.Parent.Visible = true end
                        local CachedBoxSize = UDim2_fromOffset(BoxWidth, BoxHeight)
                        if BoxOutline.Parent.Size ~= CachedBoxSize then BoxOutline.Parent.Size = CachedBoxSize end
                        
                        if not BoxInline.Parent.Visible then BoxInline.Parent.Visible = true end
                        local InlineSize = UDim2_fromOffset(BoxWidth + 2, BoxHeight + 2)
                        if BoxInline.Parent.Size ~= InlineSize then BoxInline.Parent.Size = InlineSize end

                        local BoxInlineGradient, BoxOutlineGradient = Objects["BoxInlineGradient"], Objects["BoxOutlineGradient"]; do
                            if TargetInfo.LastBoxColor1 ~= BoxColor[1] or TargetInfo.LastBoxColor2 ~= BoxColor[2] then
                                TargetInfo.LastBoxColor1 = BoxColor[1]
                                TargetInfo.LastBoxColor2 = BoxColor[2]
                                BoxInlineGradient.Color = ColorSequence_new{ColorSequenceKeypoint_new(0, BoxColor[1]), ColorSequenceKeypoint_new(1, BoxColor[2])}
                            end
                            if TargetInfo.LastBoxTrans1 ~= BoxTransparency[1] or TargetInfo.LastBoxTrans2 ~= BoxTransparency[2] then
                                TargetInfo.LastBoxTrans1 = BoxTransparency[1]
                                TargetInfo.LastBoxTrans2 = BoxTransparency[2]
                                local transSeq = NumberSequence_new{NumberSequenceKeypoint_new(0, BoxTransparency[1]), NumberSequenceKeypoint_new(1, BoxTransparency[2])}
                                BoxInlineGradient.Transparency = transSeq
                                BoxOutlineGradient.Transparency = transSeq
                            end
                            if BoxInlineGradient.Rotation ~= BoxRotation then BoxInlineGradient.Rotation = BoxRotation end
                            if BoxOutlineGradient.Rotation ~= BoxRotation then BoxOutlineGradient.Rotation = BoxRotation end
                        end

                        local BoxGlowGradient = Objects["BoxGlowGradient"]; do
                            local BoxGlowEnabled, BoxGlowColor, BoxGlowTransparency, BoxGlowRotation = ESPSettings.BoundingBox.Glow.Enabled, ESPSettings.BoundingBox.Glow.Color, ESPSettings.BoundingBox.Glow.Transparency, ESPSettings.BoundingBox.Glow.Rotation

                            if BoxGlowEnabled then
                                if BoxGlow.ImageTransparency ~= 0 then BoxGlow.ImageTransparency = 0 end
                                if BoxGlowGradient.Rotation ~= BoxGlowRotation then BoxGlowGradient.Rotation = BoxGlowRotation end
                                
                                if TargetInfo.LastGlowColor1 ~= BoxGlowColor[1] or TargetInfo.LastGlowColor2 ~= BoxGlowColor[2] then
                                    TargetInfo.LastGlowColor1 = BoxGlowColor[1]
                                    TargetInfo.LastGlowColor2 = BoxGlowColor[2]
                                    BoxGlowGradient.Color = ColorSequence_new{ColorSequenceKeypoint_new(0, BoxGlowColor[1]), ColorSequenceKeypoint_new(1, BoxGlowColor[2])}
                                end
                                if TargetInfo.LastGlowTrans1 ~= BoxGlowTransparency[1] or TargetInfo.LastGlowTrans2 ~= BoxGlowTransparency[2] then
                                    TargetInfo.LastGlowTrans1 = BoxGlowTransparency[1]
                                    TargetInfo.LastGlowTrans2 = BoxGlowTransparency[2]
                                    BoxGlowGradient.Transparency = NumberSequence_new{NumberSequenceKeypoint_new(0, BoxGlowTransparency[1]), NumberSequenceKeypoint_new(1, BoxGlowTransparency[2])}
                                end
                            else
                                if BoxGlow.ImageTransparency ~= 1 then BoxGlow.ImageTransparency = 1 end
                            end
                        end

                        local BoxFillGradient = Objects["BoxFillGradient"]; do
                            local BoxFillColor, BoxFillTransparency, BoxFillRotation = ESPSettings.BoundingBox.Fill.Color, ESPSettings.BoundingBox.Fill.Transparency, ESPSettings.BoundingBox.Fill.Rotation

                            if BoxFill.Visible ~= ESPSettings.BoundingBox.Fill.Enabled then BoxFill.Visible = ESPSettings.BoundingBox.Fill.Enabled end
                            if BoxFill.Size ~= CachedBoxSize then BoxFill.Size = CachedBoxSize end
                            if BoxFillGradient.Rotation ~= BoxFillRotation then BoxFillGradient.Rotation = BoxFillRotation end
                            
                            if TargetInfo.LastFillColor1 ~= BoxFillColor[1] or TargetInfo.LastFillColor2 ~= BoxFillColor[2] then
                                TargetInfo.LastFillColor1 = BoxFillColor[1]
                                TargetInfo.LastFillColor2 = BoxFillColor[2]
                                BoxFillGradient.Color = ColorSequence_new{ColorSequenceKeypoint_new(0, BoxFillColor[1]), ColorSequenceKeypoint_new(1, BoxFillColor[2])}
                            end
                            if TargetInfo.LastFillTrans1 ~= BoxFillTransparency[1] or TargetInfo.LastFillTrans2 ~= BoxFillTransparency[2] then
                                TargetInfo.LastFillTrans1 = BoxFillTransparency[1]
                                TargetInfo.LastFillTrans2 = BoxFillTransparency[2]
                                BoxFillGradient.Transparency = NumberSequence_new{NumberSequenceKeypoint_new(0, BoxFillTransparency[1]), NumberSequenceKeypoint_new(1, BoxFillTransparency[2])}
                            end
                        end
                    else
                        if BoxGlow.ImageTransparency ~= 1 then BoxGlow.ImageTransparency = 1 end
                        if BoxOutline.Parent.Visible then BoxOutline.Parent.Visible = false end
                        if BoxInline.Parent.Visible then BoxInline.Parent.Visible = false end
                        if BoxFill.Visible then BoxFill.Visible = false end
                    end
                end

                for BarName, BarInfo in ESPSettings.Bars do
                    local Bar, BarOutline, BarGradient = Objects[BarName], Objects[BarName .. "Outline"], Objects[BarName .. "Gradient"]; do
                        local BarEnabled, BarColor, BarTransparency = BarInfo.Enabled, BarInfo.Color, BarInfo.Transparency
                        local Position = BarInfo.Position
                        local NewParent = Objects[Position .. "BarHolder"]

                        if BarEnabled and IsA(Target, "Player") then
                            local BarValue = BarInfo.Type(Target, TargetInfo)
                            
                            if not NewParent.Visible then NewParent.Visible = true end

                            local isVertical = (Position == "Left" or Position == "Right")
                            local barSize = isVertical and UDim2_new(0, 1, BarValue, 0) or UDim2_new(BarValue, 0, 0, 1)
                            local outlineSize = isVertical and UDim2_new(0, 1, 1, 0) or UDim2_new(1, 0, 0, 1)
                            local gradRot = isVertical and 90 or -180
                            local gradOff = isVertical and Vector2_new(0, BarValue - 1) or Vector2_new(1 - BarValue, 0)
                            local barAnchor = isVertical and Vector2_new(0, 1) or Vector2_new(0, 0)
                            local barPos = isVertical and UDim2_new(0, 0, 1, 0) or UDim2_new(0, 0, 0, 0)

                            if Bar.AnchorPoint ~= barAnchor then Bar.AnchorPoint = barAnchor end
                            if Bar.Position ~= barPos then Bar.Position = barPos end
                            if Bar.Size ~= barSize then Bar.Size = barSize end

                            if BarOutline.Parent ~= NewParent then BarOutline.Parent = NewParent end
                            if BarOutline.Size ~= outlineSize then BarOutline.Size = outlineSize end

                            if BarGradient.Rotation ~= gradRot then BarGradient.Rotation = gradRot end
                            if BarGradient.Offset ~= gradOff then BarGradient.Offset = gradOff end
                            
                            if TargetInfo[BarName.."LastColor1"] ~= BarColor[1] or TargetInfo[BarName.."LastColor2"] ~= BarColor[2] or TargetInfo[BarName.."LastColor3"] ~= BarColor[3] then
                                TargetInfo[BarName.."LastColor1"] = BarColor[1]
                                TargetInfo[BarName.."LastColor2"] = BarColor[2]
                                TargetInfo[BarName.."LastColor3"] = BarColor[3]
                                BarGradient.Color = ColorSequence_new{
                                    ColorSequenceKeypoint_new(0, BarColor[1]), 
                                    ColorSequenceKeypoint_new(0, BarColor[2]), 
                                    ColorSequenceKeypoint_new(1, BarColor[3])
                                }
                            end
                        else
                            if NewParent.Visible then NewParent.Visible = false end
                        end
                    end

                    local BarText = Objects[BarName .. "Text"]; do
                        local BarTextEnabled, BarTextColor, BarTextTransparency = BarInfo.Text.Enabled, BarInfo.Text.Color, BarInfo.Text.Transparency
                        local TextPosition = BarInfo.Text.Position
                        
                        if BarTextEnabled and IsA(Target, "Player") then
                            local TextValue, TextVisible = BarInfo.Text.Type(Target, TargetInfo)
                            
                            local newText = tostring(math_floor(TextValue)) .. BarInfo.Text.Ending
                            if BarText.Text ~= newText then BarText.Text = newText end
                            if BarText.TextColor3 ~= BarTextColor then BarText.TextColor3 = BarTextColor end
                            if BarText.TextTransparency ~= BarTextTransparency then BarText.TextTransparency = BarTextTransparency end
                            if BarText.UIStroke.Transparency ~= BarTextTransparency then BarText.UIStroke.Transparency = BarTextTransparency end

                            if BarInfo.Text.FollowBar then
                                if BarText.Visible ~= TextVisible then BarText.Visible = TextVisible end
                                if BarText.Parent ~= Bar then BarText.Parent = Bar end
                                if BarText.ZIndex ~= 10 then BarText.ZIndex = 10 end
                                
                                local align = (BarInfo.Position == "Left" or BarInfo.Position == "Right") and Enum.TextXAlignment.Center or Enum.TextXAlignment.Right
                                local anchor = (BarInfo.Position == "Left" or BarInfo.Position == "Right") and Vector2_new(0.5, 0) or Vector2_new(0, 0.5)
                                
                                if BarText.TextXAlignment ~= align then BarText.TextXAlignment = align end
                                if BarText.AnchorPoint ~= anchor then BarText.AnchorPoint = anchor end
                            end

                            if not BarInfo.Text.FollowBar then
                                if not BarText.Visible then BarText.Visible = true end
                                local newParent = Objects[TextPosition .. "TextHolder"]
                                if BarText.Parent ~= newParent then BarText.Parent = newParent end
                                
                                local align = TextAlignments[TextPosition]
                                if BarText.TextXAlignment ~= align then BarText.TextXAlignment = align end
                                if BarText.AnchorPoint ~= Vector2_new(0, 0) then BarText.AnchorPoint = Vector2_new(0, 0) end
                            end
                        else
                            if BarText.Visible then BarText.Visible = false end
                        end
                    end
                end

                local NameText = Objects["TargetName"]; do
                    local NameEnabled, NameColor, NameTransparency = ESPSettings.Name.Enabled, ESPSettings.Name.Color, ESPSettings.Name.Transparency
                    
                    if NameEnabled then
                        TargetInfo.TargetName = Utility.GetFontType(if ESPSettings.Name.UseDisplay then (IsA(Target, "Player") and Target.DisplayName or Target.Name) else Target.Name)
                        local newText = TargetInfo.TargetName
                        local newParent = Objects[ESPSettings.Name.Position .. "TextHolder"]

                        if not NameText.Visible then NameText.Visible = true end
                        if NameText.Text ~= newText then NameText.Text = newText end
                        if NameText.TextXAlignment ~= TextAlignments[ESPSettings.Name.Position] then NameText.TextXAlignment = TextAlignments[ESPSettings.Name.Position] end
                        if NameText.Parent ~= newParent then NameText.Parent = newParent end
                        if NameText.TextColor3 ~= NameColor then NameText.TextColor3 = NameColor end
                        if NameText.TextTransparency ~= NameTransparency then NameText.TextTransparency = NameTransparency end
                        if NameText.UIStroke.Transparency ~= NameTransparency then NameText.UIStroke.Transparency = NameTransparency end
                    else
                        if NameText.Visible then NameText.Visible = false end
                    end
                end

                local DistanceText = Objects["Distance"]; do
                    local DistanceEnabled, DistanceColor, DistanceTransparency = ESPSettings.Distance.Enabled, ESPSettings.Distance.Color, ESPSettings.Distance.Transparency
                    
                    if DistanceEnabled then
                        local roundedDistance = math_floor(Distance)
                        if TargetInfo.LastDistanceValue ~= roundedDistance then
                            TargetInfo.LastDistanceValue = roundedDistance
                            TargetInfo.LastDistanceText = tostring(roundedDistance) .. TargetInfo.DistanceEnding
                        end
                        
                        local newText = TargetInfo.LastDistanceText
                        local newParent = Objects[ESPSettings.Distance.Position .. "TextHolder"]

                        if not DistanceText.Visible then DistanceText.Visible = true end
                        if DistanceText.TextXAlignment ~= TextAlignments[ESPSettings.Distance.Position] then DistanceText.TextXAlignment = TextAlignments[ESPSettings.Distance.Position] end
                        if DistanceText.Parent ~= newParent then DistanceText.Parent = newParent end
                        if DistanceText.TextColor3 ~= DistanceColor then DistanceText.TextColor3 = DistanceColor end
                        if DistanceText.TextTransparency ~= DistanceTransparency then DistanceText.TextTransparency = DistanceTransparency end
                        if DistanceText.UIStroke.Transparency ~= DistanceTransparency then DistanceText.UIStroke.Transparency = DistanceTransparency end
                        if DistanceText.Text ~= newText then DistanceText.Text = newText end
                    else
                        if DistanceText.Visible then DistanceText.Visible = false end
                    end
                end

                local WeaponText = Objects["Weapon"]; do
                    local WeaponEnabled, WeaponColor, WeaponTransparency = ESPSettings.Weapon.Enabled, ESPSettings.Weapon.Color, ESPSettings.Weapon.Transparency
                    
                    if IsA(Target, "Player") and WeaponEnabled then
                        local newText = TargetInfo.CurrentTool
                        local newParent = Objects[ESPSettings.Weapon.Position .. "TextHolder"]

                        if not WeaponText.Visible then WeaponText.Visible = true end
                        if WeaponText.TextXAlignment ~= TextAlignments[ESPSettings.Weapon.Position] then WeaponText.TextXAlignment = TextAlignments[ESPSettings.Weapon.Position] end
                        if WeaponText.Parent ~= newParent then WeaponText.Parent = newParent end
                        if WeaponText.TextColor3 ~= WeaponColor then WeaponText.TextColor3 = WeaponColor end
                        if WeaponText.TextTransparency ~= WeaponTransparency then WeaponText.TextTransparency = WeaponTransparency end
                        if WeaponText.UIStroke.Transparency ~= WeaponTransparency then WeaponText.UIStroke.Transparency = WeaponTransparency end
                        if WeaponText.Text ~= newText then WeaponText.Text = newText end
                    else
                        if WeaponText.Visible then WeaponText.Visible = false end
                    end
                end

                local FlagsText = Objects["Flags"]; do
                    local FlagsEnabled, FlagsColor, FlagsTransparency = ESPSettings.Flags.Enabled, ESPSettings.Flags.Color, ESPSettings.Flags.Transparency
                    
                    if FlagsEnabled then
                        local newText = ESPSettings.Flags.Type(Target, TargetInfo)
                        local newParent = Objects[ESPSettings.Flags.Position .. "TextHolder"]

                        if not FlagsText.Visible then FlagsText.Visible = true end
                        if FlagsText.TextXAlignment ~= TextAlignments[ESPSettings.Flags.Position] then FlagsText.TextXAlignment = TextAlignments[ESPSettings.Flags.Position] end
                        if FlagsText.Parent ~= newParent then FlagsText.Parent = newParent end
                        if FlagsText.TextColor3 ~= FlagsColor then FlagsText.TextColor3 = FlagsColor end
                        if FlagsText.TextTransparency ~= FlagsTransparency then FlagsText.TextTransparency = FlagsTransparency end
                        if FlagsText.UIStroke.Transparency ~= FlagsTransparency then FlagsText.UIStroke.Transparency = FlagsTransparency end
                        if FlagsText.Text ~= newText then FlagsText.Text = newText end
                    else
                        if FlagsText.Visible then FlagsText.Visible = false end
                    end
                end
            end

            function TargetInfo.Remove()
                for _, Object in Objects do
                    Object:Destroy()
                end

                if TargetInfo.CharacterConnection then
                    TargetInfo.CharacterConnection:Disconnect()
                    TargetInfo.CharacterConnection = nil
                end

                if ToolConnection.Added then
                    ToolConnection.Added:Disconnect()
                    ToolConnection.Added = nil
                end

                if ToolConnection.Removed then
                    ToolConnection.Removed:Disconnect()
                    ToolConnection.Removed = nil
                end

                ESP.Targets[Target] = nil
            end
        end

        TargetInfo.Init()
    end
    
    function ESP.RemoveTarget(NewTarget)
        for Target, TargetInfo in ESP.Targets do
            if Target == NewTarget then
                TargetInfo.Remove()
            end
        end
    end

    function ESP.Unload()
        for _, Connection in ESP.Connections do
            Connection:Disconnect()
        end

        for _, Object in ESP.Objects do
            Object:Destroy()
        end

        getgenv().Fonts = nil
    end
end

do -- Connections
    for _, Player in Players:GetPlayers() do
        ESP.AddTarget(Player)
    end

    Utility.AddConnection(Players.PlayerAdded, LPH_NO_VIRTUALIZE(function(Player)
        ESP.AddTarget(Player)
    end))

    Utility.AddConnection(Players.PlayerRemoving, LPH_NO_VIRTUALIZE(function(Player)
        ESP.RemoveTarget(Player)
    end))

    RunService:BindToRenderStep("ESP_Update", Enum.RenderPriority.First.Value, LPH_JIT_MAX(function()
        for _, Target in ESP.Targets do
            Target.Update()
        end
    end))
end
end;
esp1();
espsection:AddToggle("esp_box", {
    Text = "bounding box";
    Default = getgenv().ESP.Settings.BoundingBox.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.BoundingBox.Enabled = v;
    end;
}):AddColorPicker("esp_box_color1", {
    Default = getgenv().ESP.Settings.BoundingBox.Color[1];
    Title = "box color";
    Transparency = getgenv().ESP.Settings.BoundingBox.Transparency[1];
    Callback = function(Value)
        getgenv().ESP.Settings.BoundingBox.Color[1] = Value
    end;
}):AddColorPicker("esp_box_color2", {
    Default = getgenv().ESP.Settings.BoundingBox.Color[2];
    Title = "box color";
    Transparency = getgenv().ESP.Settings.BoundingBox.Transparency[2];
    Callback = function(Value)
        getgenv().ESP.Settings.BoundingBox.Color[2] = Value
    end;
});
espsection:AddToggle("esp_box_glow", {
    Text = "box glow";
    Default = getgenv().ESP.Settings.BoundingBox.Glow.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.BoundingBox.Glow.Enabled = v;
    end;
}):AddColorPicker("esp_glow_color1", {
    Default = getgenv().ESP.Settings.BoundingBox.Glow.Color[1];
    Title = "glow color";
    Transparency = getgenv().ESP.Settings.BoundingBox.Glow.Transparency[1];
    Callback = function(Value)
        getgenv().ESP.Settings.BoundingBox.Glow.Color[1] = Value
    end;
}):AddColorPicker("esp_glow_color2", {
    Default = getgenv().ESP.Settings.BoundingBox.Glow.Color[2];
    Title = "glow color";
    Transparency = getgenv().ESP.Settings.BoundingBox.Glow.Transparency[2];
    Callback = function(Value)
        getgenv().ESP.Settings.BoundingBox.Glow.Color[2] = Value
    end;
});
espsection:AddToggle("esp_box_fill", {
    Text = "box fill";
    Default = getgenv().ESP.Settings.BoundingBox.Fill.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.BoundingBox.Fill.Enabled = v;
    end;
}):AddColorPicker("esp_fill_color1", {
    Default = getgenv().ESP.Settings.BoundingBox.Fill.Color[1];
    Title = "fill color";
    Transparency = getgenv().ESP.Settings.BoundingBox.Fill.Transparency[1];
    Callback = function(Value)
        getgenv().ESP.Settings.BoundingBox.Fill.Color[1] = Value
    end;
}):AddColorPicker("esp_fill_color2", {
    Default = getgenv().ESP.Settings.BoundingBox.Fill.Color[2];
    Title = "fill color";
    Transparency = getgenv().ESP.Settings.BoundingBox.Fill.Transparency[2];
    Callback = function(Value)
        getgenv().ESP.Settings.BoundingBox.Fill.Color[2] = Value
    end;
});
espsection:AddToggle("esp_healthbar", {
    Text = "health bar";
    Default = getgenv().ESP.Settings.Bars.HealthBar.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.Bars.HealthBar.Enabled = v;
    end;
}):AddColorPicker("esp_health_color1", {
    Default = getgenv().ESP.Settings.Bars.HealthBar.Color[1];
    Title = "health high";
    Callback = function(Value)
        getgenv().ESP.Settings.Bars.HealthBar.Color[1] = Value
    end;
}):AddColorPicker("esp_health_color2", {
    Default = getgenv().ESP.Settings.Bars.HealthBar.Color[2];
    Title = "health mid";
    Callback = function(Value)
        getgenv().ESP.Settings.Bars.HealthBar.Color[2] = Value
    end;
}):AddColorPicker("esp_health_color3", {
    Default = getgenv().ESP.Settings.Bars.HealthBar.Color[3];
    Title = "health low";
    Callback = function(Value)
        getgenv().ESP.Settings.Bars.HealthBar.Color[3] = Value
    end;
});
espsection:AddToggle("esp_name", {
    Text = "name";
    Default = getgenv().ESP.Settings.Name.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.Name.Enabled = v;
    end;
}):AddColorPicker("esp_name_color", {
    Default = getgenv().ESP.Settings.Name.Color;
    Title = "name color";
    Transparency = getgenv().ESP.Settings.Name.Transparency;
    Callback = function(Value)
        getgenv().ESP.Settings.Name.Color = Value
    end;
});
espsection:AddToggle("esp_distance", {
    Text = "distance";
    Default = getgenv().ESP.Settings.Distance.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.Distance.Enabled = v;
    end;
}):AddColorPicker("esp_distance_color", {
    Default = getgenv().ESP.Settings.Distance.Color;
    Title = "distance color";
    Transparency = getgenv().ESP.Settings.Distance.Transparency;
    Callback = function(Value)
        getgenv().ESP.Settings.Distance.Color = Value
    end;
});
espsection:AddToggle("esp_weapon", {
    Text = "weapon";
    Default = getgenv().ESP.Settings.Weapon.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.Weapon.Enabled = v;
    end;
}):AddColorPicker("esp_weapon_color", {
    Default = getgenv().ESP.Settings.Weapon.Color;
    Title = "weapon color";
    Transparency = getgenv().ESP.Settings.Weapon.Transparency;
    Callback = function(Value)
        getgenv().ESP.Settings.Weapon.Color = Value
    end;
});
espsection:AddToggle("esp_flags", {
    Text = "flags";
    Default = getgenv().ESP.Settings.Flags.Enabled;
    Callback = function(v)
        getgenv().ESP.Settings.Flags.Enabled = v;
    end;
}):AddColorPicker("esp_flags_color", {
    Default = getgenv().ESP.Settings.Flags.Color;
    Title = "flags color";
    Transparency = getgenv().ESP.Settings.Flags.Transparency;
    Callback = function(Value)
        getgenv().ESP.Settings.Flags.Color = Value
    end;
});
espsection:AddDropdown("name_type", {
	Values = {"display name", "name"};
	Default = "display name";
	Multi = false;
	Text = "name type";
	Callback = function(v)
		if Options.name_type.Value == "display name" then
			getgenv().ESP.Settings.Name.UseDisplay = true;
		else
			getgenv().ESP.Settings.Name.UseDisplay = false;
		end;
	end;
});
espsection:AddSlider("max_distance", {
    Text = "max distance";
    Default = getgenv().ESP.Settings.MaxDistance;
	Min = 100;
	Max = 100000;
	Compact = true;
	Rounding = 0;
    Callback = function(v)
        getgenv().ESP.Settings.MaxDistance = v;
    end;
});
espsection:AddToggle("Tracer", {
	Text = "tracer";
	Default = false;
	Tooltip = "Show enemy tracers";
}):AddColorPicker("TracerColor", {
	Default = Color3.new(1, 1, 1);
	Title = "Tracer Color";
	Transparency = 0;
});
espsection:AddSlider("TracerMaxDist", {
	Text = "tracer length";
	Default = 1000;
	Min = 100;
	Max = 5000;
	Rounding = 0;
	Compact = true;
	Suffix = " studs";
	Tooltip = "Maximum distance to show tracer";
});
espsection:AddDropdown("TracerOrigin", {
	Text = "tracer origin";
	Default = "Bottom";
	Values = {"Bottom", "Cursor"};
	Tooltip = "Where tracers originate from";
});
espsection:AddToggle("TracerAutoSelect", {
	Text = "tracer autoselect";
	Default = false;
	Tooltip = "shows tracer to your current target";
});
espsection:AddSlider("TracerAutoSelectDistance", {
	Text = "autoselect distance";
	Default = 1000;
	Min = 100;
	Max = 5000;
	Rounding = 0;
	Compact = true;
	Suffix = " studs";
	Tooltip = "Max distance for autoselect tracer";
});



espsection:AddToggle("Health", {
	Text = "health";
	Default = false;
	Tooltip = "Show enemies health";
}):AddColorPicker("HealthColor", {
	Default = Color3.fromRGB(0, 255, 0);
	Title = "Health Color";
	Transparency = 0;
});
espsection:AddToggle("Indicators", {
	Text = "indicators";
	Default = false;
	Tooltip = "Show indicators";
});
espsection:AddToggle("SwingCooldown", {
	Text = "swing cooldown";
	Default = false;
	Tooltip = "Show swing cooldown";
});
espsection:AddToggle("ParryCooldown", {
	Text = "parry cooldown";
	Default = false;
	Tooltip = "Show parry cooldown";
});
espsection:AddDropdown("ESPTypes", {
	Text = "indicators types";
	Default = "None";
	Values = {"None", "Tool", "Distance", "Both"};
	Tooltip = "Type of Indicator";
});
espsection:AddToggle("OutOfFOV", {
	Text = "enabled";
	Default = false;
	Tooltip = "Show enemies that are out of your field of view";
});
espsection:AddSlider("OutFOVSize", {
	Text = "size";
	Default = 15;
	Min = 10;
	Max = 15;
	Rounding = 0;
	Compact = true;
	Tooltip = "How big the indicator is";
});
espsection:AddSlider("OutFOVOffset", {
	Text = "offset";
	Default = 400;
	Min = 100;
	Max = 700;
	Rounding = 0;
	Compact = true;
	Tooltip = "The offset of the indicator";
});
espsection:AddDropdown("OFFSettings", {
	Text = "settings";
	Default = "None";
	Values = {"None", "Outline", "Blinking", "Both"};
	Tooltip = "Type of indicator";
});
espsection:AddToggle("UtilityESP", {
	Text = "enabled";
	Default = false;
	Tooltip = "Show utilities locations";
});
espsection:AddSlider("UtilityESPMaxDistance", {
	Text = "max distance";
	Default = 5000;
	Min = 250;
	Max = 5000;
	Rounding = 0;
	Compact = true;
	Suffix = " studs";
	Tooltip = "How far does the ESP goes";
});
espsection:AddToggle("C4", {
	Text = "c4";
	Default = false;
	Tooltip = "Show C4";
});
espsection:AddToggle("Grenade", {
	Text = "grenade";
	Default = false;
	Tooltip = "Show grenades";
});
espsection:AddToggle("Claymore", {
	Text = "claymore";
	Default = false;
	Tooltip = "Show claymore";
});
espsection:AddToggle("Beartrap", {
	Text = "bear trap";
	Default = false;
	Tooltip = "Show Bear Trap";
});

-- global state for rainbow effects
getgenv().serenium_global_rainbow_color = Color3.new(1,1,1);
local currentRagebotTarget = nil;

local function InitializeESP() -- ESP/Visuals Scope (fixes register limit)
	local FOVCircles = {
		Silent = drawingnew("Circle"),
		Aimbot = drawingnew("Circle"),
		Visuals = drawingnew("Circle"),
		Outline = drawingnew("Circle"),
		Fill = drawingnew("Circle")
	}
	local lastFOVCirclePos = userinputservice:GetMouseLocation()
	local currentFOVCircleSize = 50

	local FOVCircleSilent = FOVCircles.Silent
	local FOVCircleAimbot = FOVCircles.Aimbot
	local FOVCircleVisuals = FOVCircles.Visuals
	local FOVCircleVisualsOutline = FOVCircles.Outline
	local FOVCircleVisualsFill = FOVCircles.Fill

	FOVCircles.Silent.Visible = false;
	FOVCircles.Aimbot.Visible = false;
	FOVCircles.Visuals.Visible = false;
	FOVCircles.Outline.Visible = false;
	FOVCircles.Fill.Visible = false;

	FOVCircles.Silent.Transparency = 1;
	FOVCircles.Aimbot.Transparency = 1;
	FOVCircles.Visuals.Transparency = 1;
	FOVCircles.Outline.Transparency = 1;
	FOVCircles.Fill.Transparency = 0.5;

	FOVCircles.Silent.Color = Color3.new(1, 1, 1);
	FOVCircles.Aimbot.Color = Color3.new(1, 1, 1);
	FOVCircles.Visuals.Color = Color3.new(1, 1, 1);
	FOVCircles.Outline.Color = Color3.new(0, 0, 0);
	FOVCircles.Fill.Color = Color3.new(1, 1, 1);

	FOVCircles.Silent.Thickness = 1;
	FOVCircles.Aimbot.Thickness = 1;
	FOVCircles.Visuals.Thickness = 1;
	FOVCircles.Outline.Thickness = 1;
	FOVCircles.Fill.Thickness = 1;

	FOVCircles.Silent.NumSides = 64;
	FOVCircles.Aimbot.NumSides = 64;
	FOVCircles.Visuals.NumSides = 64;
	FOVCircles.Outline.NumSides = 64;
	FOVCircles.Fill.NumSides = 64;

	FOVCircles.Fill.Filled = true;
	-- Add ESP entries to Classes table
	if not Classes.ESP then
		Classes.ESP = Toggles.ESP;
		Classes.ESPMaxDistance = Options.ESPMaxDistance;
		Classes.Boxes = Toggles.Boxes;
		Classes.BoxColor = Options.BoxColor;
        Classes.Highlight = Toggles.Highlight;
        Classes.HighlightColor = Options.HighlightColor;
		Classes.Names = Toggles.Names;
		Classes.NameColor = Options.NameColor;
		Classes.Tracer = Toggles.Tracer;
		Classes.TracerColor = Options.TracerColor;
		Classes.TracerMaxDist = Options.TracerMaxDist;
		Classes.TracerOrigin = Options.TracerOrigin;
		Classes.TracerAutoSelect = Toggles.TracerAutoSelect;
		Classes.TracerAutoSelectDistance = Options.TracerAutoSelectDistance;

		Classes.Health = Toggles.Health;
		Classes.HealthColor = Options.HealthColor;
		Classes.Indicators = Toggles.Indicators;
		Classes.SwingCooldown = Toggles.SwingCooldown;
		Classes.ParryCooldown = Toggles.ParryCooldown;
		Classes.ESPTypes = Options.ESPTypes;
		Classes.OutOfFOV = Toggles.OutOfFOV;
		Classes.OutFOVSize = Options.OutFOVSize;
		Classes.OutFOVOffset = Options.OutFOVOffset;
		Classes.OFFSettings = Options.OFFSettings;
		Classes.UtilityESP = Toggles.UtilityESP;
		Classes.UtilityESPMaxDistance = Options.UtilityESPMaxDistance;
		Classes.C4 = Toggles.C4;
		Classes.Grenade = Toggles.Grenade;
		Classes.Claymore = Toggles.Claymore;
		Classes.Beartrap = Toggles.Beartrap;
        Classes.RainbowCharacter = Toggles.RainbowCharacter;
        Classes.GhostTrail = Toggles.GhostTrail;
        Classes.OutlineGlow = Toggles.OutlineGlow;
        Classes.OutlineGlowColor = Options.OutlineGlowColor;

        Classes.WeaponChamsEnabled = Toggles.WeaponChamsEnabled;
        Classes.WeaponChamsColor = Options.WeaponChamsColor;
        Classes.WeaponChamsMaterial = Options.WeaponChamsMaterial;
        Classes.WeaponChamsHighlight = Toggles.WeaponChamsHighlight;
        Classes.WeaponChamsHighlightColor = Options.WeaponChamsHighlightColor;
        Classes.CharacterMaterial = Options.CharacterMaterial;
        Classes.CharacterMaterialColor = Options.CharacterMaterialColor;
        Classes.CharacterTransparency = Options.CharacterTransparency;
        
        -- FOV Mappings
        Classes.ShowFOVCircle = Toggles.ShowFOVCircle;
        Classes.FOVCircleColor = Options.FOVCircleColor;
        Classes.FOVCircleFill = Toggles.FOVCircleFill;
        Classes.FOVCircleFillColor = Options.FOVCircleFillColor;
        Classes.FOVCircleOutline = Toggles.FOVCircleOutline;
        Classes.FOVCircleOutlineColor = Options.FOVCircleOutlineColor;
        Classes.FOVCircleSmoothing = Options.FOVCircleSmoothing;
        Classes.FOVCircleSize = Options.FOVCircleSize;

        Classes.HitDetectionEnabled = Toggles.HitDetectionEnabled;
        Classes.HitSound = Options.HitSound;
        Classes.HitEffects = Options.HitEffects;
        Classes.HitLogs = Toggles.HitLogs;
        Classes.HitEffectColor = Options.HitEffectColor;
        Classes.HvhColor = Options.HvhColor;
	end

	-- ESP Variables
	local PlayerDrawings = {}
	local UtilityDrawings = {}
	local PlrConnections = {}
	local TracerPoints = {}
	local ESPSettings = {
		Line = {
			Thickness = 1,
			Color = Color3.fromRGB(0, 255, 0),
		},
		Text = {
			Size = 13,
			Center = true,
			Outline = true,
			Font = Drawing.Fonts.Plex,
			Color = Color3.fromRGB(255, 255, 255),
		},
		Square = {
			Thickness = 1,
			Color = Color3.new(1, 1, 1),
			Filled = false,
		},
		Triangle = {
			Color = Color3.fromRGB(255, 255, 255),
			Filled = true,
			Visible = false,
			Thickness = 1,
		},
		Image = {
			Color = Color3.fromRGB(255, 255, 255),
			Visible = false,
		},
	}

	local AimbotHighlight = Instance.new("Highlight", workspace.Terrain)
	local RagebotHighlight = Instance.new("Highlight", workspace.Terrain)
	local SilentAimHighlight = Instance.new("Highlight", workspace.Terrain)

	AimbotHighlight.FillColor = Color3.new(1, 1, 1)
	RagebotHighlight.FillColor = Color3.new(1, 1, 1)
	SilentAimHighlight.FillColor = Color3.new(1, 1, 1)

	-- Utility colors
	local UtilityColors = {
		C4 = Color3.fromRGB(255, 0, 0),
		Grenade = Color3.fromRGB(0, 255, 0),
		Claymore = Color3.fromRGB(255, 255, 0),
		Beartrap = Color3.fromRGB(255, 128, 0),
	}

	-- Animation tracking
	local animations = {}
	do
		local blacklist = {
			"rbxassetid://106649093705106",
			"rbxassetid://6423003415",
			"rbxassetid://101463478179793",
		}

		if modules.Name["WeaponMetadata"] then
			for i, v in pairs(modules.Name["WeaponMetadata"]) do
				if v.slashMetadata then
					for _, data in pairs(v.slashMetadata) do
						if data.animation and data.animation.AnimationId and not table.find(blacklist, data.animation.AnimationId) then
							table.insert(animations, data.animation.AnimationId)
						end
					end
				end
			end
		end
	end

	function New(Type, Outline, Name)
		local drawing = drawingnew(Type)
		for i, v in pairs(ESPSettings[Type]) do
			drawing[i] = v
		end
		if Outline then
			drawing.Color = Color3.new(0, 0, 0)
			drawing.Thickness = 3
		end
		return drawing
	end

	local PlrConnections = {}
	local function Add(Player)
		if not PlayerDrawings[Player] then
            local Character = Player.Character
			if not PlrConnections[Player] then
				PlrConnections[Player] = {}
			end

			local function check(char)
				if not char or char:GetAttribute("AlreadyFoundParry") then
					return
				end
				for i, v in pairs(char:GetChildren()) do
					if v:GetAttribute("ParryShieldId") then
						local thing = v:GetChildren()[1]
						if thing then
							char:SetAttribute("AlreadyFoundParry", true)
							table.insert(
								PlrConnections[Player],
								thing:GetPropertyChangedSignal("Transparency"):Connect(function()
									if thing.Transparency ~= 1 then
										Player:SetAttribute("LastParry", tick())
									end
								end)
							)
						end
					end
				end
			end

			local function OnNewTool(Tool)
				check(Player.Character)
				if not Tool:IsA("Tool") then
					return
				end
				local Configuration = modules.Name["WeaponMetadata"] and modules.Name["WeaponMetadata"][Tool:GetAttribute("ItemId")]
				if Configuration then
					Player:SetAttribute("SwingCooldown", Configuration.cooldown or 1)
				end
			end

			table.insert(
				PlrConnections[Player],
				Player.CharacterAdded:Connect(function(Character)
					local PlayerDrawing = PlayerDrawings[Player]
					local Root = Character:WaitForChild("HumanoidRootPart")
					local Hum = Character:WaitForChild("Humanoid")
					if PlayerDrawing then
						PlayerDrawing.RootPart = Root
						PlayerDrawing.Humanoid = Hum
                        -- Recreate Highlight if it was destroyed with the previous character
                        if not PlayerDrawing.Highlight or not PlayerDrawing.Highlight.Parent then
                            if PlayerDrawing.Highlight then pcall(function() PlayerDrawing.Highlight:Destroy() end) end
                            PlayerDrawing.Highlight = Instance.new("Highlight")
                            PlayerDrawing.Highlight.Name = "ESP_Highlight"
                            PlayerDrawing.Highlight.FillTransparency = 1
                            PlayerDrawing.Highlight.OutlineTransparency = 0
                        end
                        PlayerDrawing.Highlight.Parent = Character
					end
					check(Character)
					table.insert(PlrConnections[Player], Character.ChildAdded:Connect(OnNewTool))
					local animator = Hum:FindFirstChildOfClass("Animator")
					if animator then
						table.insert(
							PlrConnections[Player],
							animator.AnimationPlayed:Connect(function(track)
								if track.Animation and track.Animation.AnimationId and table.find(animations, track.Animation.AnimationId) then
									Player:SetAttribute("LastSwing", tick())
								end
							end)
						)
					end
				end)
			)

			local Root = Character and Character:FindFirstChild("HumanoidRootPart")
			local Hum = Root and Character:FindFirstChild("Humanoid")

			if Character then
				for i, v in pairs(Character:GetChildren()) do
					OnNewTool(v)
				end
				check(Character)
				table.insert(PlrConnections[Player], Character.ChildAdded:Connect(OnNewTool))
				if Hum then
					local animator = Hum:FindFirstChildOfClass("Animator")
					if animator then
						table.insert(
							PlrConnections[Player],
							animator.AnimationPlayed:Connect(function(track)
								if track.Animation and track.Animation.AnimationId and table.find(animations, track.Animation.AnimationId) then
									Player:SetAttribute("LastSwing", tick())
								end
							end)
						)
					end
				end
			end

			PlayerDrawings[Player] = {
				Offscreen = New("Triangle", nil, "Offscreen"),
				Name = New("Text", nil, "Name"),
				Tool = New("Text", nil, "Tool"),
				Distance = New("Text", nil, "Distance"),
				BoxOutline = New("Square", true, "BoxOutline"),
				Box = New("Square", nil, "Box"),
				HealthOutline = New("Line", true, "HealthOutline"),
				Health = New("Line", nil, "Health"),
				Tracer = New("Line", nil, "Tracer"),
				TracerOutline = New("Line", nil, "TracerOutline"),
				Swing = LastSwing,
				Parry = LastParry,
                Highlight = Instance.new("Highlight"),
				RootPart = Root,
				Humanoid = Hum,
			}
            PlayerDrawings[Player].Highlight.Name = "ESP_Highlight"
            PlayerDrawings[Player].Highlight.Enabled = false
            PlayerDrawings[Player].Highlight.FillTransparency = 1
            PlayerDrawings[Player].Highlight.OutlineTransparency = 0 -- Fully visible outline
            if Character then PlayerDrawings[Player].Highlight.Parent = Character end
		end
	end

	-- Add utility to ESP
	local function AddUtility(Utility, Name)
		if not UtilityDrawings[Utility] then
			UtilityDrawings[Utility] = {
				Name = New("Text", nil, "Name"),
				Box = New("Square", nil, "Box"),
				BoxOutline = New("Square", true, "BoxOutline"),
				Distance = New("Text", nil, "Distance"),
				ObjectName = Name,
			}
		end
	end

	-- Initialize players
	for Player, _ in pairs(getgenv().cachedplayers) do
		if Player ~= localplayer then
			Add(Player)
		end
	end

	players.PlayerAdded:Connect(Add)
	players.PlayerRemoving:Connect(function(Player)
		if PlayerDrawings[Player] then
			for i, v in pairs(PlayerDrawings[Player]) do
				if v and i ~= "RootPart" and i ~= "Humanoid" then
					if i == "Highlight" then
						v:Destroy()
					else
						v:Remove()
					end
				end
			end
			if PlrConnections[Player] and next(PlrConnections[Player]) then
				for i, v in pairs(PlrConnections[Player]) do
					v:Disconnect()
				end
			end
			PlayerDrawings[Player] = nil
		end
	end)

	local function Check(Utility)
		if Utility.Name == "PlacedClaymore" then
			AddUtility(Utility, "Claymore")
		elseif Utility.Name == "utility7Proxy" then
			AddUtility(Utility, "C4")
		elseif Utility.Name == "utility5Proxy" then
			AddUtility(Utility, "Grenade")
		elseif Utility.Name == "OpenBearTrap" then
			AddUtility(Utility, "Bear Trap")
		end
	end

	local Map = workspace:FindFirstChild("Map")
	local EffectsJunk = workspace:FindFirstChild("EffectsJunk")
	
	if Map then
		for i, v in pairs(Map:GetChildren()) do
			Check(v)
		end
		Map.ChildAdded:Connect(function(Utility)
			Check(Utility)
		end)
		Map.ChildRemoved:Connect(function(Utility)
			if UtilityDrawings[Utility] then
				for i, v in pairs(UtilityDrawings[Utility]) do
					if i ~= "ObjectName" and v then
						v:Remove()
					end
				end
				UtilityDrawings[Utility] = nil
			end
		end)
	end

	if EffectsJunk then
		for i, v in pairs(EffectsJunk:GetChildren()) do
			Check(v)
		end
		EffectsJunk.ChildAdded:Connect(function(Utility)
			Check(Utility)
		end)
		EffectsJunk.ChildRemoved:Connect(function(Utility)
			if UtilityDrawings[Utility] then
				for i, v in pairs(UtilityDrawings[Utility]) do
					if i ~= "ObjectName" and v then
						v:Remove()
					end
				end
				UtilityDrawings[Utility] = nil
			end
		end)
	end

	local function Rotate(point, center, angle)
		angle = math.rad(angle)
		return vector2new(
			mathfloor(mathcos(angle) * (point.X - center.X) - mathsin(angle) * (point.Y - center.Y) + center.X),
			mathfloor(math.sin(angle) * (point.X - center.X) + mathcos(angle) * (point.Y - center.Y) + center.Y)
		)
	end

	local function DrawUtility(Name, Box, BoxOutline, Distance, ObjectName, BoxSize, BoxPos, Dist, BottomOffset, ClassName)
		local utilColor = UtilityColors[ClassName] or ESPSettings.Square.Color
		
		Name.Text = ObjectName
		Name.Position = vector2new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
		Name.Color = utilColor
		Name.Size = ESPSettings.Text.Size
		Name.Visible = true
		Name.ZIndex = 1

		Box.Size = BoxSize
		Box.Position = BoxPos
		Box.Visible = true
		Box.Color = utilColor
		Box.ZIndex = 1

		BoxOutline.Size = BoxSize
		BoxOutline.Position = BoxPos
		BoxOutline.Visible = true
		BoxOutline.ZIndex = 0

		Distance.Text = mathfloor(Dist) .. "m"
		Distance.Position = vector2new(BoxSize.X / 2 + BoxPos.X, BottomOffset)
		Distance.Color = utilColor
		Distance.Size = ESPSettings.Text.Size
		Distance.Visible = true
		Distance.ZIndex = 1
	end

	local _espSkipKeys = {RootPart = true, Humanoid = true, SessionData = true, Highlight = true};

    -- Drawing Cleanup for Re-execution
    if getgenv().SereniumPlayerDrawings then
        for _, drawings in pairs(getgenv().SereniumPlayerDrawings) do
            for _, drawing in pairs(drawings) do
                if type(drawing) == "table" and drawing.Remove then pcall(function() drawing:Remove() end) end
            end
        end
    end
    getgenv().SereniumPlayerDrawings = PlayerDrawings

    if getgenv().SereniumUtilityDrawings then
        for _, drawings in pairs(getgenv().SereniumUtilityDrawings) do
            for _, drawing in pairs(drawings) do
                if type(drawing) == "table" and drawing.Remove then pcall(function() drawing:Remove() end) end
            end
        end
    end
    getgenv().SereniumUtilityDrawings = UtilityDrawings

    if getgenv().SereniumFOVCircle then
        for _, drawing in pairs(getgenv().SereniumFOVCircle) do
            if type(drawing) == "table" and drawing.Remove then pcall(function() drawing:Remove() end) end
        end
    end
    getgenv().SereniumFOVCircle = FOVCircles

		runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
		local mousePos = userinputservice:GetMouseLocation();
		local screenCenter = camera.ViewportSize / 2;
        getgenv().serenium_global_rainbow_color = Color3.fromHSV(tick() % 5 / 5, 1, 1)

        local smoothAmount = math.max(1, Classes.FOVCircleSmoothing.Value)
        lastFOVCirclePos = lastFOVCirclePos + (mousePos - lastFOVCirclePos) / smoothAmount
        
        local targetSize = Classes.FOVCircleSize.Value
        currentFOVCircleSize = currentFOVCircleSize + (targetSize - currentFOVCircleSize) / smoothAmount

		if Classes.ShowFOV and Classes.ShowFOV.Value then
			FOVCircleSilent.Visible = true;
			FOVCircleSilent.Position = lastFOVCirclePos;
			FOVCircleSilent.Radius = Options.FOVSize.Value;
            FOVCircleSilent.Color = Options.FOVCircleSilentColor and Options.FOVCircleSilentColor.Value or Color3.new(1, 1, 1);
            FOVCircleSilent.Thickness = 0.1
		else
			FOVCircleSilent.Visible = false;
		end;

        -- Visuals FOV Circle
        if Classes.ShowFOVCircle and Classes.ShowFOVCircle.Value then
            local fovColor = Classes.FOVCircleColor.Value
            local fillEnabled = Classes.FOVCircleFill.Value
            local fillColor = Classes.FOVCircleFillColor.Value
            local fillTransparency = (Options.FOVCircleFillColor and Options.FOVCircleFillColor.Transparency) or 0.5
            local outlineEnabled = Classes.FOVCircleOutline.Value
            local outlineColor = Classes.FOVCircleOutlineColor.Value

            -- Update Outline Circle
            if outlineEnabled then
                FOVCircleVisualsOutline.Visible = true
                FOVCircleVisualsOutline.Position = lastFOVCirclePos
                FOVCircleVisualsOutline.Radius = currentFOVCircleSize + 1
                FOVCircleVisualsOutline.Color = outlineColor
                FOVCircleVisualsOutline.Thickness = 0.1
                FOVCircleVisualsOutline.ZIndex = 1
            else
                FOVCircleVisualsOutline.Visible = false
            end

            -- Update Main Circle
            FOVCircleVisuals.Visible = true
            FOVCircleVisuals.Position = lastFOVCirclePos
            FOVCircleVisuals.Radius = currentFOVCircleSize
            FOVCircleVisuals.Color = fovColor
            FOVCircleVisuals.Thickness = 1
            FOVCircleVisuals.ZIndex = 2
            
            -- Update Fill Circle
            if fillEnabled then
                FOVCircleVisualsFill.Visible = true
                FOVCircleVisualsFill.Position = lastFOVCirclePos
                FOVCircleVisualsFill.Radius = currentFOVCircleSize
                FOVCircleVisualsFill.Color = fillColor
                FOVCircleVisualsFill.Transparency = (1 - fillTransparency)
                FOVCircleVisualsFill.Filled = true
                FOVCircleVisualsFill.ZIndex = 0
            else
                FOVCircleVisualsFill.Visible = false
            end
        else
            FOVCircleVisuals.Visible = false
            FOVCircleVisualsOutline.Visible = false
            FOVCircleVisualsFill.Visible = false
        end

        -- removed typo assignment
	end));

	runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
        local utilEnabled = Classes.UtilityESP.Value
		for i, v in pairs(UtilityDrawings) do
			if not v then continue end
			
			-- Always hide all drawings for this utility first (Defensive approach)
			if v.Name then v.Name.Visible = false end
			if v.Box then v.Box.Visible = false end
			if v.BoxOutline then v.BoxOutline.Visible = false end
			if v.Distance then v.Distance.Visible = false end

			-- Skip if utility ESP is disabled or utility no longer exists
			if not utilEnabled or not i or not i.Parent then continue end

			local Root = i
			local RootPos = Root:IsA("Model") and (Root.PrimaryPart and Root.PrimaryPart.Position or Root:GetPivot().Position) or (Root:IsA("BasePart") and Root.Position or nil)
            if not RootPos then continue end

			local Distance = (camera.CFrame.Position - RootPos).Magnitude
			if Classes.UtilityESPMaxDistance.Value < Distance then continue end

			local Pos, OnScreen = camera:WorldToViewportPoint(RootPos)
			-- Only draw if on screen
			if OnScreen and Pos.Z > 0 then
				local Size = (camera:WorldToViewportPoint(RootPos - vector3new(0, 3, 0)).Y - camera:WorldToViewportPoint(RootPos + vector3new(0, 2.6, 0)).Y) / 2
				local BoxSize = vector2new(mathfloor(Size), mathfloor(Size))
				local BoxPos = vector2new(mathfloor(Pos.X - Size / 2), mathfloor(Pos.Y - Size / 2))
				local Name = v.Name
				local Box = v.Box
				local BoxOutline = v.BoxOutline
				local Dist = v.Distance
				local ObjectName = v.ObjectName
				local BottomOffset = BoxSize.Y + BoxPos.Y + 1

				if Classes.C4.Value and ObjectName == "C4" then
					DrawUtility(Name, Box, BoxOutline, Dist, ObjectName, BoxSize, BoxPos, Distance, BottomOffset, "C4")
				elseif Classes.Grenade.Value and ObjectName == "Grenade" then
					DrawUtility(Name, Box, BoxOutline, Dist, ObjectName, BoxSize, BoxPos, Distance, BottomOffset, "Grenade")
				elseif Classes.Claymore.Value and ObjectName == "Claymore" then
					DrawUtility(Name, Box, BoxOutline, Dist, ObjectName, BoxSize, BoxPos, Distance, BottomOffset, "Claymore")
				elseif Classes.Beartrap.Value and ObjectName == "Bear Trap" then
					DrawUtility(Name, Box, BoxOutline, Dist, ObjectName, BoxSize, BoxPos, Distance, BottomOffset, "Beartrap")
				end
			end
		end
        local closestPlayerToCursor = nil
        local mousePos = userinputservice:GetMouseLocation()
        local closestDistance = math.huge
        
        -- Pre-calculate closest player for tracer/selection
        for Player, _ in pairs(getgenv().cachedplayers) do
            if Player == localplayer then continue end
            local char = Player.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if not root then continue end
            
            local Pos, OnScreen = camera:WorldToViewportPoint(root.Position)
            if OnScreen then
                local screenDist = (vector2new(Pos.X, Pos.Y) - mousePos).Magnitude
                if screenDist < closestDistance then
                    closestDistance = screenDist
                    closestPlayerToCursor = Player
                end
            end
        end
        
        local maxDist = getgenv().ESP.Settings.MaxDistance;
        local tracerEnabled = Classes.Tracer.Value
        local tracerMaxDist = Classes.TracerMaxDist.Value
        
        local rageTarget = getgenv().serenium_ragebot_target or getgenv().LockedTarget
        local saTarget = getgenv().serenium_sa_target
        
        for Player, _ in pairs(getgenv().cachedplayers) do
            if Player == localplayer then continue end
            local PlayerDrawing = PlayerDrawings[Player]
            if not PlayerDrawing then continue end
            
            -- Visibility reset (optimized)
            PlayerDrawing.Offscreen.Visible = false
            PlayerDrawing.Name.Visible = false
            PlayerDrawing.Tool.Visible = false
            PlayerDrawing.Distance.Visible = false
            PlayerDrawing.Box.Visible = false
            PlayerDrawing.BoxOutline.Visible = false
            PlayerDrawing.Health.Visible = false
            PlayerDrawing.HealthOutline.Visible = false
            PlayerDrawing.Tracer.Visible = false
            PlayerDrawing.TracerOutline.Visible = false

            local RootPart = PlayerDrawing.RootPart
            local Humanoid = PlayerDrawing.Humanoid
            if not Player.Character or not RootPart or not Humanoid then continue end
            
            local isRageTarget = (rageTarget == Player)
            local isSATarget = (saTarget == Player)
            if PlayerDrawing.Highlight then
                if (isRageTarget and Classes.ShowRageBotTarget.Value) or (isSATarget and Classes.ShowTargetSA.Value) then
                    PlayerDrawing.Highlight.Enabled = true
                    PlayerDrawing.Highlight.Adornee = Player.Character
                    PlayerDrawing.Highlight.FillColor = Classes.HvhColor.Value or Color3.new(1, 1, 1)
                else
                    PlayerDrawing.Highlight.Enabled = false
                end
            end
            
            local DistFromChar = (camera.CFrame.Position - RootPart.Position).Magnitude
            local Pos, OnScreen = camera:WorldToViewportPoint(RootPart.Position)

            if DistFromChar > maxDist then continue end

            if not OnScreen then
                if Classes.OutOfFOV.Value then
                    local RootPos = RootPart.Position
                    local CameraVector = camera.CFrame.Position
                    local LookVector = camera.CFrame.LookVector
                    local Dot = LookVector:Dot(RootPos - CameraVector)

                    if Dot <= 0 then
                        RootPos = CameraVector + ((RootPos - CameraVector) - ((LookVector * Dot) * 1.01))
                    end

                    local ScreenPos, OS = camera:WorldToScreenPoint(RootPos)
                    if not OS then
                        local Drawing = PlayerDrawing.Offscreen
                        local FOV = 800 - Classes.OutFOVOffset.Value
                        local Size = Classes.OutFOVSize.Value
                        local Center = camera.ViewportSize / 2
                        local Direction = (vector2new(ScreenPos.X, ScreenPos.Y) - Center).Unit
                        local Radian = math.atan2(Direction.X, Direction.Y)
                        local Angle = (((math.pi * 2) / FOV) * Radian)
                        local ClampedPosition = Center + (Direction * math.min(math.abs(((Center.Y - FOV) / math.sin(Angle)) * FOV), math.abs((Center.X - FOV) / (mathcos(Angle)) / 2)))
                        local Point = vector2new(mathfloor(ClampedPosition.X - (Size / 2)), mathfloor((ClampedPosition.Y - (Size / 2) - 15)))

                        local OFFSettings = Classes.OFFSettings.Value
                        local Rotation = mathfloor(-math.deg(Radian)) - 47
                        Drawing.PointA = Rotate(Point + vector2new(Size, Size), Point, Rotation)
                        Drawing.PointB = Rotate(Point + vector2new(-Size, -Size), Point, Rotation)
                        Drawing.PointC = Rotate(Point + vector2new(-Size, Size), Point, Rotation)
                        Drawing.Color = ESPSettings.Triangle.Color
                        Drawing.Filled = not ((OFFSettings == "Outline" or OFFSettings == "Both") or false)
                        Drawing.Transparency = ((OFFSettings == "Blinking" or OFFSettings == "Both") or false) and (math.sin(tick() * 5) + 1) / 2 or 1
                        Drawing.Visible = true
                    end
                end
            else
                local Size = (camera:WorldToViewportPoint(RootPart.Position - vector3new(0, 3, 0)).Y - camera:WorldToViewportPoint(RootPart.Position + vector3new(0, 2.6, 0)).Y) / 2
                local BoxSize = vector2new(mathfloor(Size * 1.5), mathfloor(Size * 1.9))
                local BoxPos = vector2new(mathfloor(Pos.X - Size * 1.5 / 2), mathfloor(Pos.Y - Size * 1.6 / 2))

                local Name = PlayerDrawing.Name
                local Tool = PlayerDrawing.Tool
                local Distance = PlayerDrawing.Distance
                local Box = PlayerDrawing.Box
                local BoxOutline = PlayerDrawing.BoxOutline
                local Health = PlayerDrawing.Health
                local HealthOutline = PlayerDrawing.HealthOutline
                local LastSwing = PlayerDrawing.Swing
                local LastParry = PlayerDrawing.Parry

                Name.ZIndex = 2
                Tool.ZIndex = 2
                Distance.ZIndex = 2
                Box.ZIndex = 2
                BoxOutline.ZIndex = 1
                Health.ZIndex = 2
                HealthOutline.ZIndex = 1

                local State = framework:GetSessionData(Player)
                if State then
                    State = State:getState()
                else
                    State = { parry = {} }
                end

                if Classes.SwingCooldown.Value then
                    LastSwing.Visible = true
                    local SwingCooldown = Player:GetAttribute("SwingCooldown") or 1
                    local Cooldown = Player:GetAttribute("LastSwing") and tick() - Player:GetAttribute("LastSwing") or false
                    LastSwing.Position = vector2new((BoxSize.X + BoxPos.X + 5), BoxPos.Y)
                    LastSwing.Transparency = (Cooldown and (Cooldown / SwingCooldown)) or 1
                    LastSwing.Size = vector2new(BoxSize.X * 0.2, BoxSize.Y * 0.1579)
                end

                if Classes.ParryCooldown.Value then
                    if Classes.SwingCooldown.Value then
                        LastParry.Position = vector2new((BoxSize.X + BoxPos.X + 5), (BoxPos.Y + LastSwing.Size.Y + 5))
                    else
                        LastParry.Position = vector2new((BoxSize.X + BoxPos.X + 5), BoxPos.Y)
                    end
                    local parryTime = (State.parry and State.parry.lastParrySucceeded) and 0.33 or 3
                    LastParry.Transparency = math.clamp((tick() - (Player:GetAttribute("LastParry") or 1)) / parryTime, 0, 1)
                    LastParry.Size = vector2new(BoxSize.X * 0.2, BoxSize.Y * 0.1579)
                    LastParry.Visible = true
                end

                if tracerEnabled and not whitelisted(Player) then
                    local autoSelect = Classes.TracerAutoSelect.Value
                    local autoDist = Classes.TracerAutoSelectDistance.Value
                    
                    local drawTarget = nil
                    if autoSelect then
                        if getgenv().ragebot and (getgenv().serenium_ragebot_target or getgenv().LockedTarget) then
                            drawTarget = getgenv().serenium_ragebot_target or getgenv().LockedTarget
                        elseif getgenv().stick and getgenv().stickTarget then
                            drawTarget = getgenv().stickTarget
                        elseif DistFromChar <= autoDist then
                            drawTarget = closestPlayerToCursor
                        end
                    elseif DistFromChar <= tracerMaxDist then
                        -- If auto-select is OFF, we might want to show tracers for EVERYONE in range
                        -- But usually, that's what causes "duplicates" (visual clutter).
                        -- If the user wants NO duplicates, they should probably use AutoSelect.
                        -- If they don't use it, we'll just show for everyone in range.
                        
                        -- However, to specifically fix "duplicate tracers" from rage target,
                        -- we ensure that if ragebot is on, we don't draw EXTRA tracers if it's already drawing for them.
                        -- Actually, let's just make it strictly one target if they want clarity.
                    end
                    
                    if Player == drawTarget or (not autoSelect and DistFromChar <= tracerMaxDist) then
                        local tracer = PlayerDrawing.Tracer
                        local tracerOutline = PlayerDrawing.TracerOutline
                        if tracer and tracerOutline then
                            local origin = Classes.TracerOrigin.Value
                            local fromPos = (origin == "Cursor") and mousePos or vector2new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
                            local toPos = vector2new(Pos.X, Pos.Y)
                            
                            local tracerColor = Classes.TracerColor.Value or Color3.new(1, 1, 1)
                            
                            tracer.From = fromPos
                            tracer.To = toPos
                            tracer.Color = tracerColor
                            tracer.Thickness = 1
                            tracer.ZIndex = 1
                            tracer.Visible = true
                            
                            tracerOutline.From = fromPos
                            tracerOutline.To = toPos
                            tracerOutline.Color = Color3.new(0, 0, 0)
                            tracerOutline.Thickness = 2
                            tracerOutline.ZIndex = 0
                            tracerOutline.Visible = true
                        end
                    end
                end
            end
        end
    end))

end
InitializeESP()

-- Weapon Chams and Character Visuals Implementation
local function InitializeVisuals()
    local WeaponChamsData = {
        OriginalProperties = {},
        AppliedParts = {},
        CurrentWeapon = nil,
        WeaponHighlight = nil
    }

    local CharacterVisualsData = {
        OriginalProperties = {},
        OutlineGlow = nil,
        RainbowConnection = nil
    }

    local function CleanupWeaponChams()
        -- Remove highlight
        if WeaponChamsData.WeaponHighlight then
            pcall(function() WeaponChamsData.WeaponHighlight:Destroy() end)
            WeaponChamsData.WeaponHighlight = nil
        end
        
        -- Restore original properties for ALL tracked parts
        for part, props in pairs(WeaponChamsData.OriginalProperties) do
            if part and part.Parent then
                pcall(function()
                    part.Material = props.Material
                    part.Color = props.Color
                    if props.Transparency then
                        part.Transparency = props.Transparency
                    end
                    if props.TextureID and part:IsA("MeshPart") then
                        part.TextureID = props.TextureID
                    end
                end)
            end
        end
        
        -- Clear all tracking tables
        WeaponChamsData.OriginalProperties = {}
        WeaponChamsData.AppliedParts = {}
        WeaponChamsData.CurrentWeapon = nil
    end

    local LastWeaponChams = {
        Material = nil,
        Color = nil,
        Highlight = nil,
        HighlightColor = nil
    }

    local function ApplyWeaponChams(tool)
        if not tool or not tool:IsA("Tool") then return end
        if not Classes.WeaponChamsEnabled or not Classes.WeaponChamsEnabled.Value then 
            CleanupWeaponChams()
            return 
        end
        
        local chamsMaterial = Classes.WeaponChamsMaterial and Classes.WeaponChamsMaterial.Value or "Plastic"
        local chamsColor = Classes.WeaponChamsColor and Classes.WeaponChamsColor.Value or Color3.new(1, 0, 0)
        
        local highlightEnabled = Classes.WeaponChamsHighlight and Classes.WeaponChamsHighlight.Value or false
        local highlightColor = Classes.WeaponChamsHighlightColor and Classes.WeaponChamsHighlightColor.Value or Color3.new(1, 0, 0)

        -- Check if material, color, or highlight settings changed
        local settingsChanged = (LastWeaponChams.Material ~= chamsMaterial) or 
                                 (LastWeaponChams.Color ~= chamsColor) or
                                 (LastWeaponChams.Highlight ~= highlightEnabled) or
                                 (LastWeaponChams.HighlightColor ~= highlightColor)
        
        -- Clean up and reapply if weapon changed OR settings changed
        if WeaponChamsData.CurrentWeapon ~= tool or settingsChanged then
            CleanupWeaponChams()
            WeaponChamsData.CurrentWeapon = tool
            LastWeaponChams.Material = chamsMaterial
            LastWeaponChams.Color = chamsColor
            LastWeaponChams.Highlight = highlightEnabled
            LastWeaponChams.HighlightColor = highlightColor
        else
            return -- Nothing changed, skip expensive GetDescendants
        end
        
        -- Apply to all parts in the tool (only runs when weapon/settings changed)
        for _, part in pairs(tool:GetDescendants()) do
            if part:IsA("BasePart") then
                -- Store original properties if not already stored
                if not WeaponChamsData.OriginalProperties[part] then
                    WeaponChamsData.OriginalProperties[part] = {
                        Material = part.Material,
                        Color = part.Color,
                        Transparency = part.Transparency
                    }
                end
                
                -- Apply chams
                pcall(function()
                    if Enum.Material[chamsMaterial] then
                        part.Material = Enum.Material[chamsMaterial]
                    else
                        part.Material = Enum.Material.Plastic
                    end
                    part.Color = chamsColor
                    -- Optional: If it's a mesh, remove texture for better cham effect
                    if part:IsA("MeshPart") and part.TextureID ~= "" then
                        if not WeaponChamsData.OriginalProperties[part].TextureID then
                            WeaponChamsData.OriginalProperties[part].TextureID = part.TextureID
                        end
                        part.TextureID = ""
                    end
                end)
                
                WeaponChamsData.AppliedParts[part] = true
            end
        end
        
        -- Apply highlight if enabled
        if Classes.WeaponChamsHighlight and Classes.WeaponChamsHighlight.Value then
            if not WeaponChamsData.WeaponHighlight or not WeaponChamsData.WeaponHighlight.Parent then
                WeaponChamsData.WeaponHighlight = Instance.new("Highlight")
                WeaponChamsData.WeaponHighlight.Name = "WeaponChams_Highlight"
                WeaponChamsData.WeaponHighlight.FillTransparency = 0.5
                WeaponChamsData.WeaponHighlight.OutlineTransparency = 0
                WeaponChamsData.WeaponHighlight.Adornee = tool
                WeaponChamsData.WeaponHighlight.Parent = tool
            end
            
            local highlightColor = Classes.WeaponChamsHighlightColor and Classes.WeaponChamsHighlightColor.Value or Color3.new(1, 0, 0)
            WeaponChamsData.WeaponHighlight.FillColor = highlightColor
            WeaponChamsData.WeaponHighlight.OutlineColor = highlightColor
        else
            if WeaponChamsData.WeaponHighlight then
                pcall(function() WeaponChamsData.WeaponHighlight:Destroy() end)
                WeaponChamsData.WeaponHighlight = nil
            end
        end
    end

    local function CleanupCharacterVisuals()
        -- Remove outline glow
        if CharacterVisualsData.OutlineGlow then
            pcall(function() CharacterVisualsData.OutlineGlow:Destroy() end)
            CharacterVisualsData.OutlineGlow = nil
        end
        
        -- Disconnect rainbow
        if CharacterVisualsData.RainbowConnection then
            CharacterVisualsData.RainbowConnection:Disconnect()
            CharacterVisualsData.RainbowConnection = nil
        end
        
        -- Restore original properties
        for part, props in pairs(CharacterVisualsData.OriginalProperties) do
            if part and part.Parent then
                pcall(function()
                    part.Material = props.Material
                    part.Color = props.Color
                    part.Transparency = props.Transparency
                end)
            end
        end
        
        CharacterVisualsData.OriginalProperties = {}
    end

    -- Weapon Chams Rendering Loop
    local weaponChamsActive = false
    runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
        if Classes.WeaponChamsEnabled and Classes.WeaponChamsEnabled.Value then
            weaponChamsActive = true
            local equippedTool = character and character:FindFirstChildOfClass("Tool")
            if equippedTool then
                ApplyWeaponChams(equippedTool)
            else
                CleanupWeaponChams()
            end
        else
            if weaponChamsActive then
                weaponChamsActive = false
                CleanupWeaponChams()
            end
        end
    end));

-- Consolidated into CreateCharacterVisuals loop below

-- Cleanup on character change
    localplayer.CharacterAdded:Connect(function(newChar)
        CleanupWeaponChams()
        CleanupCharacterVisuals()
        character = newChar
        humanoidrootpart = newChar:WaitForChild("HumanoidRootPart")
        humanoid = newChar:WaitForChild("Humanoid")
    end)
end
InitializeVisuals()

local function InitializeCombat() -- Combat/Rage Scope (fixes register limit)
-- ranged tab

-- Gun Mods Section
gunmods:AddToggle("NoSpread", {
	Text = "no spread";
	Default = false;
	Callback = function(value)
		if value then
			modifyranged("minSpread", 0);
			modifyranged("maxSpread", 0);
		else
			revertranged("minSpread");
			revertranged("maxSpread");
		end;
	end;
});

gunmods:AddToggle("NoRecoil", {
	Text = "no recoil";
	Default = false;
	Callback = function(value)
		if value then
			modifyranged("recoilAmount", 0);
		else
			revertranged("recoilAmount");
		end;
	end;
});

gunmods:AddToggle("NoGravity", {
	Text = "no gravity";
	Default = false;
	Callback = function(value)
		if value then
			modifyranged("gravity", vector3new(0, 0, 0));
		else
			revertranged("gravity");
		end;
	end;
});

gunmods:AddToggle("NoReloadCancel", {
	Text = "no reload cancel";
	Default = false;
	Callback = function(v)
		getgenv().nocancel = v;
	end;
});

gunmods:AddToggle("NoReloadSlow", {
	Text = "no reload slowdown";
	Default = false;
	Callback = function(value)
		if value then
			modifyranged("reloadWalkSpeedMultiplier", 1);
		else
			revertranged("reloadWalkSpeedMultiplier");
		end;
	end;
});

gunmods:AddToggle("InstantCharge", {
	Text = "instant charge";
	Default = false;
	Callback = function(value)
		if value then
			modifyranged("chargeOnDuration", 0.01);
			modifyranged("chargeOffDuration", 0.01);
		else
			revertranged("chargeOnDuration");
			revertranged("chargeOffDuration");
		end;
	end;
});

gunmods:AddToggle("InfiniteRange", {
	Text = "infinite range";
	Default = false;
	Callback = function(value)
		if value then
			modifyranged("maxDistance", 10000);
		else
			revertranged("maxDistance");
		end;
	end;
});

gunmods:AddToggle("Wallbang", {
	Text = "wallbang";
	Default = false;
	Callback = function(v)
		Config.Wallbang = v;
		getgenv().Wallbang = v;
	end;
});

gunmods:AddToggle("AlwaysHead", {
	Text = "always head";
	Default = false;
	Callback = function(v)
		getgenv().AlwaysHead = v;
	end;
});

-- Add ranged to Classes table
if not Classes.Aimbot then
	Classes.Aimbot = Toggles.Aimbot;
	Classes.Smooth = Toggles.Smooth;
	Classes.Prediction = Toggles.Prediction;
	Classes.Hold = Toggles.Hold;
	Classes.ShowFOVAimbot = Toggles.ShowFOVAimbot;

	Classes.ShowTargetAB = Toggles.ShowTargetAB;
	Classes.AimbotHitPart = Options.AimbotHitPart;
	Classes.SilentAim = Toggles.SilentAim;
	Classes.ClosestType = Options.ClosestType;
	Classes.SilentHitPart = Options.SilentHitPart;
	Classes.SilentAimRange = Options.SilentAimRange;
	Classes.HitChance = Options.HitChance;
	Classes.ShowFOV = Toggles.ShowFOV;

	Classes.FOVSize = Options.FOVSize;
	Classes.Resolver = Toggles.Resolver;
	Classes.ShowTargetSA = Toggles.ShowTargetSA;
	Classes.NoSpread = Toggles.NoSpread;
	Classes.NoRecoil = Toggles.NoRecoil;
	Classes.NoGravity = Toggles.NoGravity;
	Classes.FastProjectiles = Toggles.FastProjectiles;
	Classes.NoReloadCancel = Toggles.NoReloadCancel;
	Classes.NoReloadSlow = Toggles.NoReloadSlow;
	Classes.InstantCharge = Toggles.InstantCharge;
	Classes.InfiniteRange = Toggles.InfiniteRange;
	Classes.Wallbang = Toggles.Wallbang;
	getgenv().AlwaysHead = Toggles.AlwaysHead.Value;
	Classes.HitDetectionEnabled = Toggles.HitDetectionEnabled;
	Classes.HitLogs = Toggles.HitLogs;
    Classes.HvhColor = Options.HvhColor;
	Classes.HitSound = Options.HitSound;
	Classes.HitEffects = Options.HitEffects;
    Classes.HitEffectColor = Options.HitEffectColor;
	getgenv().ragebot = Toggles.Ragebot.Value;
	Classes.ShowRageBotTarget = Toggles.ShowRageBotTarget;
	Classes.RagebotDist = Options.RagebotDist;
end;
local Camera = workspace.CurrentCamera
local KalmanFilter = {}
KalmanFilter.__index = KalmanFilter

function KalmanFilter.new()
	return setmetatable({
		x = Vector3.zero, -- Estimated position
		v = Vector3.zero, -- Estimated velocity
		a = Vector3.zero, -- Estimated acceleration
		p = 1, -- Estimate uncertainty
		r = 0.01, -- Measurement noise
		q = 0.001, -- Process noise
	}, KalmanFilter)
end

function KalmanFilter:update(measured_pos, measured_vel, dt)
	local predicted_x = self.x + self.v * dt + 0.5 * self.a * dt * dt
	local predicted_v = self.v + self.a * dt

	local p_pred = self.p + self.q
	local k = p_pred / (p_pred + self.r) -- Kalman gain

	self.x = predicted_x + k * (measured_pos - predicted_x)
	self.v = predicted_v + k * (measured_vel - predicted_v)
	self.p = (1 - k) * p_pred

	return self.x, self.v
end
function PredictTargetPosition(origin, destination, weapon_speed, ping, gravity)
	local filter = destination.KalmanFilter or KalmanFilter.new()
	destination.KalmanFilter = filter

	local measured_pos = destination.Position
	local measured_vel = destination.Velocity or Vector3.zero
	local dt = runservice.Heartbeat:Wait()

	local estimated_pos, estimated_vel = filter:update(measured_pos, measured_vel, dt)
	local network_delay = ping / 1000

	local future_pos = estimated_pos + estimated_vel * network_delay

	local travel_time = (future_pos - origin).magnitude / weapon_speed
	if measured_vel.Y <= -15 or measured_vel.Y >= 15 then
		measured_vel = Vector3.new(measured_vel.X, measured_vel.Y * travel_time, measured_vel.Z)
	end

	future_pos = future_pos + estimated_vel * travel_time
	future_pos = future_pos + Vector3.new(0, -0.5 * gravity * travel_time ^ 2, 0)

	return future_pos
end

local HitDetection = {
    ConnectedCasters = {},
    ProcessedCasts = {},
    LastCloneTime = {},
}

function HitDetection:ConnectToCaster(caster)
    if not caster or self.ConnectedCasters[caster] then return end
    self.ConnectedCasters[caster] = true
    
    caster.RayHit:Connect(function(cast, result)
        if not Classes.HitDetectionEnabled.Value then return end
        
        -- Per-projectile debounce: only trigger effect once per bullet
        if self.ProcessedCasts[cast] then return end
        
        -- Ownership Check: Verify this cast belongs to our current tool
        if not cast.UserData then return end
        if cast.UserData.player and cast.UserData.player ~= localplayer then return end
        
        local struckPart = result.Instance
        local character = struckPart and struckPart.Parent
        if character and character:FindFirstChildOfClass("Humanoid") then
            local player = game.Players:GetPlayerFromCharacter(character)
            if player and player ~= localplayer then
                -- Mark cast as processed
                self.ProcessedCasts[cast] = true
                task.delay(5, function() self.ProcessedCasts[cast] = nil end)

                -- Calculate damage from tool metadata (works for weapons & utilities)
                -- Calculate damage from tool metadata (works for weapons & utilities)
                local damage = 0
                local tool = cast.UserData.tool
                if tool then
                    -- Lookup Strategy: Name -> ItemId -> Raw Attributes
                    local keys = {tool.Name}
                    if tool:GetAttribute("ItemId") then table.insert(keys, tool:GetAttribute("ItemId")) end
                    
                    local dCfg = nil
                    for _, k in ipairs(keys) do
                         dCfg = framework:getmetadata(k) or framework:getutility(k)
                         -- Direct module lookup fallback
                         if not dCfg and modules.Name["WeaponMetadata"] then
                             dCfg = modules.Name["WeaponMetadata"][k]
                         end
                         if dCfg then break end
                    end

                    if dCfg then
                         damage = dCfg.damage or dCfg.baseDamage or dCfg.base_damage or dCfg.maxDamage 
                                  or (dCfg.Stats and (dCfg.Stats.damage or dCfg.Stats.baseDamage))
                                  or 0
                         if struckPart and struckPart.Name == "Head" then
                             local hsMultiplier = dCfg.headshotMultiplier or 1.75 -- Default 1.75x for headshots
                             damage = damage * hsMultiplier
                         end
                    else
                         -- Fallback: Check attributes directly on the tool
                         damage = tool:GetAttribute("Damage") or tool:GetAttribute("BaseDamage")
                         
                         local multiplier = tool:GetAttribute("HeadshotMultiplier") or 1.5 -- Default 1.5 if not found but IS headshot? 
                         -- Better to look for config value

                         -- Fallback: Check for Configuration folder
                         if not damage or damage == 0 then
                             local config = tool:FindFirstChild("Configuration") or tool:FindFirstChild("Settings")
                             if config then
                                 local dVal = config:FindFirstChild("Damage") or config:FindFirstChild("BaseDamage") or config:FindFirstChild("MaxDamage")
                                 if dVal and dVal:IsA("ValueBase") then damage = dVal.Value end
                                 
                                 local mVal = config:FindFirstChild("HeadshotMultiplier")
                                 if mVal and mVal:IsA("ValueBase") then multiplier = mVal.Value end
                             end
                         end
                         
                         damage = damage or 0
                         if struckPart and struckPart.Name == "Head" then
                             damage = damage * multiplier
                         end
                    end
                end
                -- Unified hit detection handled by defaultHit or Ragebot loop
                -- We only use this for visual sync if needed
                OnHit(player, struckPart, damage, "Ranged")
            end
        end
    end)
end

local Camera = workspace.CurrentCamera
    -- Active Monitor Loop to ensure Casters are connected even if hook misses
    framework:BindToRenderStep(LPH_JIT_MAX(function()
        local char = localplayer.Character
        if not char then return end
        local tool = char:FindFirstChildOfClass("Tool")
        if not tool then return end
        
        if HitDetection and not HitDetection.__monitoredTools then HitDetection.__monitoredTools = {} end
        if HitDetection.__monitoredTools[tool] then return end
        HitDetection.__monitoredTools[tool] = true
        
        -- Try to find wrapper and caster
        local wrapper = nil
        if modules.Name["RangedWeaponClient"] then
            wrapper = modules.Name["RangedWeaponClient"].getObj(tool)
        end
        if not wrapper and modules.Name["UtilityClient"] and modules.Name["UtilityClient"].getObj then
            wrapper = modules.Name["UtilityClient"].getObj(tool)
        end
        
        if wrapper then
            if wrapper._mainCaster then
                 HitDetection:ConnectToCaster(wrapper._mainCaster)
            elseif wrapper._caster then
                 HitDetection:ConnectToCaster(wrapper._caster)
            end
        end
    end))

    HitDetection.Active = true
do
    local SA_Logic = {
    Cache = {},
    ChanceCache = {},
    CurrentTarget = nil,
    OldSimulate = nil,
    OldCalculateFire = nil
}

do -- Silent Aim
	setthreadidentity(2)
	local ActiveCast = require(game:GetService("ReplicatedStorage").Shared.Vendor.FastCast.ActiveCast)
	setthreadidentity(7)

	local cache = {}
	local chanceCache = {}
	local oldCf = CFrame.new()
	local oldCfCheck = false
	local currentSilentAimTarget = nil
	local OldSimulateCast = getupvalue(ActiveCast.new, 6)
	local OldCalculateFire = modules.Name["RangedWeaponHandler"].calculateFireDirection

	function newSimulate(...)
		local args = { ... }
		local caster = args[1]
		local terminated = false

		pcall(LPH_JIT_MAX(function()
			local weapon, metadata = framework:GetRanged()

			local Chance = framework:Chance(Classes.HitChance.Value)
			if not Chance then
				table.insert(chanceCache, caster)
			end

			if Toggles.avoidprojectiles.Value
				and caster
				and caster.UserData
				and caster.UserData.tool ~= weapon then

				local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
				if not rootPart then return end

				local pos = caster:GetPosition()
				if not pos then return end
				local projectileSpeed = metadata._itemConfig.speed
				if not projectileSpeed or projectileSpeed <= 0 then return end
				local distance = (rootPart.Position - pos).Magnitude
				local stats = game:GetService("Stats")
				local pingValue = stats.Network.ServerStatsItem["Data Ping"]:GetValue()
				local pingSeconds = pingValue / 1000
				local casterVelocity = Vector3.zero
				if caster.GetVelocity then
					casterVelocity = caster:GetVelocity()
				end
				local predictedPos = pos + (casterVelocity * pingSeconds)
				local predictedDistance = (rootPart.Position - predictedPos).Magnitude
				local predictedTravelTime = predictedDistance / projectileSpeed
				local safetyBuffer = 0.05
				local adjustedTime = predictedTravelTime - pingSeconds - safetyBuffer
				if adjustedTime <= 0.15 then
					setrunning("AvoidProjectiles", true)
					task.delay(0.5, function()
						setrunning("AvoidProjectiles", false)
					end)
				end
			end

			if
				not table.find(chanceCache, caster)
				and Chance
				and caster
				and caster.UserData
				and caster.StateInfo
				and caster.UserData.tool == weapon
				and (Classes.SilentAim.Value or getgenv().ragebot)
				and weapon
				and metadata
			then
				local Player = framework:GetClosestCharacterToOrigin(caster:GetPosition(), 19)
				if Classes.ClosestType.Value == "Only Redirect To Target" then
					Player = nil
					local Characters = framework:GetClosestCharactersToOrigin(caster:GetPosition(), 19)
					if table.find(Characters, currentSilentAimTarget) then
						Player = currentSilentAimTarget
					end
				end

				local MouseClosest = framework:GetClosestToMouse(Classes.FOVSize.Value)

				if Player then
					local Head = Player:FindFirstChild("Head")
					local Character = LocalPlayer.Character
					local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

					if getgenv().ragebot and Head and HumanoidRootPart then
						if Toggles.ShowLine.Value then
							local part = Instance.new("Part")
							part.Anchored = true
							part.CanCollide = false
							part.Material = Enum.Material.Neon
							part.Color = Options.LineColor.Value
							part.Size = Vector3.new(0.1, 0.1, (Head.Position - HumanoidRootPart.Position).Magnitude)
							part.CFrame = CFrame.new(HumanoidRootPart.Position, Head.Position) * CFrame.new(0, 0, -part.Size.Z / 2)
							part.Transparency = 0
							part.Parent = workspace

							task.spawn(function()
								local fadeTime = 2
								local steps = 30
								for i = 1, steps do
									part.Transparency = i / steps
									task.wait(fadeTime / steps)
								end
								part:Destroy()
							end)
						end

						caster.Caster.RayHit:Fire(caster, {
							Distance = 1,
							Instance = Head,
							Material = Enum.Material.SmoothPlastic,
							Position = Head.Position,
							Normal = Vector3.yAxis,
						}, nil, caster.RayInfo.CosmeticBulletObject)

						caster:Terminate()
						terminated = true
						return
					end
				end

				if Classes.SilentAim.Value then
					if Classes.ClosestType.Value == "Closest To Mouse" then
						if MouseClosest then
							local PlayerChar = MouseClosest.Character
							if PlayerChar then
								local HitPart = PlayerChar:FindFirstChild(
									Classes.SilentHitPart.Value == "Random"
											and R6BodyParts[math.random(1, #R6BodyParts)]
										or Classes.SilentHitPart.Value
								)
								if
									HitPart
									and (HitPart.Position - caster:GetPosition()).Magnitude
										<= Classes.SilentAimRange.Value
								then
									local targetPos = HitPart.Position
									local origin = caster:GetPosition()
									local direction = (targetPos - origin)
									local distance = direction.Magnitude
									local speed = 3000
									local Vel = direction.Unit * speed
									caster:SetVelocity(Vel)
									caster.RayInfo.Direction = Vel.Unit
								end
							end
						end
					elseif
						Classes.ClosestType.Value == "Closest To Arrow"
						or Classes.ClosestType.Value == "Only Redirect To Target"
					then
						if Player then
							local HitPart = Player:FindFirstChild(
								Classes.SilentHitPart.Value == "Random" and R6BodyParts[math.random(1, #R6BodyParts)]
									or Classes.SilentHitPart.Value
							)
							if
								HitPart
								and (HitPart.Position - caster:GetPosition()).Magnitude
									<= Classes.SilentAimRange.Value
							then
								local targetPos = HitPart.Position
								local Vel = (targetPos - caster:GetPosition()).Unit * 3000
								caster:SetVelocity(Vel)
							end
						end
					end
				end
			end
		end))

		if terminated then return end

		if caster and caster.UserData and caster.StateInfo then
			return OldSimulateCast(...)
		end

		return
	end

	function newCalculateFire(...)
		local args = {...}
		local target = framework:GetClosestToMouse(Options.FOVSize.Value)
		if getgenv().stick and getgenv().stickTarget then
			target = getgenv().stickTarget
		end
		local ranged, metadata = framework:GetRanged()
		if
			Classes.SilentAim.Value
			and target
			and ranged
			and metadata
			and framework:Chance(Classes.HitChance.Value)
			and not framework:InMenu(target)
		then
			local hitPart = target.Character:FindFirstChild(Classes.SilentHitPart.Value)
			local humanoid = target.Character:FindFirstChildOfClass("Humanoid")

			if hitPart and humanoid then
				local cheatedOrigin = metadata:getCheatedBackOriginIfInObject(
					metadata._mainCasterBehavior.RaycastParams
				)

				if cheatedOrigin then
					currentSilentAimTarget = target.Character
					local projectileSpeed = metadata._itemConfig.speed
					local projectileGravity = metadata._itemConfig.gravity or Vector3.new(0, 0, 0)
					local aimPos = PredictTargetPosition(cheatedOrigin, {
						Position = hitPart.Position,
						Velocity = (Classes.Resolver.Value and humanoid.MoveDirection or hitPart.Velocity),
					}, projectileSpeed, LocalPlayer:GetNetworkPing() * 1000, projectileGravity)
					args[1] = CFrame.lookAt(vector3new(), (aimPos - cheatedOrigin).Unit)
					local oldParams = metadata._mainCasterBehavior.RaycastParams
					local newParams = RaycastParams.new()
					newParams.FilterType = Enum.RaycastFilterType.Blacklist
					newParams.IgnoreWater = oldParams.IgnoreWater

					local ignoreList = {}
					if oldParams.FilterDescendantsInstances then
						for _, v in ipairs(oldParams.FilterDescendantsInstances) do
							table.insert(ignoreList, v)
						end
					end
					for _, plr in pairs(game.Players:GetPlayers()) do
						local plrChar = plr.Character
						if plrChar and plrChar ~= target.Character then
							table.insert(ignoreList, plrChar)
						end
					end

					if not table.find(ignoreList, workspace.Terrain) then
						table.insert(ignoreList, workspace.Terrain)
					end
					newParams.FilterDescendantsInstances = ignoreList
					metadata._mainCasterBehavior.RaycastParams = newParams
					task.defer(function()
						metadata._mainCasterBehavior.RaycastParams = oldParams
					end)
				end
			end
		end
		return OldCalculateFire(unpack(args))
	end

	setupvalue(ActiveCast.new, 6, newcclosure(function(...)
		return newSimulate(...)
	end))

	modules.Name["RangedWeaponHandler"].calculateFireDirection = newCalculateFire

    local VisualizerFolder = Instance.new("Folder", game.Workspace.Terrain)
    VisualizerFolder.Name = "FastCastVisualizationObjects"
    VisualizerFolder.ChildAdded:Connect(function(child)
        task.wait()
        local Debris = game:GetService("Debris")
        Debris:AddItem(child, 0.7)
    end)
local Activeragebot = true;
	task.spawn(LPH_JIT_MAX(function()
		while task.wait() do
			if not Activeragebot then
				break
			end

			if not getgenv().ragebot then
				task.wait(0.2)
				continue
			end

			local Character = localplayer.Character
			if not Character then
				continue
			end

			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			if not HumanoidRootPart then
				continue
			end

			local ranged, metadata = framework:GetRanged()
			if not ranged or not metadata then
				continue
			end

			local player = LockedTarget or framework:GetClosest2(Classes.RagebotDist.Value)

			if LockedTarget and not next(LockedTarget) then
				LockedTarget = nil
				continue
			end

			if not player or not next(player) then
				continue
			end

			if metadata.canShootBulletssss == nil then
				metadata.canShootBulletssss = true
			end

			if not metadata.canShootBulletssss then
				if metadata._itemConfig.maxAmmo == 1 then
					metadata.canShootBulletssss = true
				else
					continue
				end
			end

			if metadata._clientAmmoVO.Value <= 0 then
				continue;
			end;

			if not metadata._mainCasterBehavior or not metadata._mainCaster then
				continue
			end

			local targetPlayer = players:FindFirstChild(next(player))
			if not targetPlayer or not targetPlayer.Character then
				continue
			end

			local targetHumanoid = targetPlayer.Character:FindFirstChild("Humanoid")
			if not targetHumanoid or targetHumanoid.Health == 0 then
				LockedTarget = nil
				continue
			end

			if framework:InMenu(targetPlayer) then
				LockedTarget = nil
				continue
			end

			local Head = targetPlayer.Character:FindFirstChild("Head")
			if not Head or targetPlayer.Character:FindFirstChildOfClass("ForceField") then
				LockedTarget = nil
				continue
			end

			metadata.canShootBulletssss = false
			LockedTarget = player

			metadata._mainCasterBehavior.RaycastParams.FilterDescendantsInstances = {
				metadata._mainCasterBehavior.RaycastParams.FilterDescendantsInstances,
				PlayerCharacters,
				Map,
				Workspace.Terrain,
			}

			local origin = metadata:getCheatedBackOriginIfInObject(metadata._mainCasterBehavior.RaycastParams)
			local projectileSpeed = metadata._itemConfig.speed or 200
			local projectileGravity = metadata._itemConfig.gravity or Vector3.new(0, 0, 0)

			local finalPos = PredictTargetPosition(
				origin,
				{ Position = Head.Position, Velocity = Head.Velocity },
				projectileSpeed,
				LocalPlayer:GetNetworkPing() * 1000,
				projectileGravity
			)

			local CF = CFrame.new(Vector3.new(), (finalPos - origin).Unit)
			local dir = OldCalculateFire(CF, 0, 0, 5000)

			local fakeBehavior = {
				RaycastParams = metadata._mainCasterBehavior.RaycastParams,
				Acceleration = Vector3.new(),
				MaxDistance = 5000,
				HighFidelityBehavior = 1,
				HighFidelitySegmentSize = 0.5,
				CosmeticBulletContainer = EffectsJunk,
				AutoIgnoreContainer = true,
			}

			local template = metadata._cosmeticProjectileTemplate
			if typeof(fakeBehavior) == "Instance" then
				fakeBehavior.CosmeticBulletProvider = nil
				fakeBehavior.CosmeticBulletTemplate = template
			else
				fakeBehavior.CosmeticBulletProvider = template
				fakeBehavior.CosmeticBulletTemplate = nil
			end

			local cast = metadata._mainCaster:Fire(origin, dir, projectileSpeed, fakeBehavior)
			metadata._cheatId = metadata._cheatId and metadata._cheatId + 1 or 1
			cast.UserData = {
				["player"] = LocalPlayer,
				["tool"] = ranged,
				["shotId"] = tostring(metadata._cheatId),
				["origin"] = origin,
				["chargePercentage"] = metadata._chargeProgressVO.Value,
			}

			network:FireServer("RangedFire", ranged, origin, {
				[tostring(metadata._cheatId)] = dir.Unit,
			}, {
				[tostring(metadata._cheatId)] = dir,
			}, {
				[1] = tostring(metadata._cheatId),
			}, nil, Camera.CFrame, Workspace:GetServerTimeNow(), metadata._chargeProgressVO.Value)
			metadata._clientAmmoVO.Value = metadata._clientAmmoVO.Value - 1

			local distance = (origin - Head.Position).Magnitude
			local timeToHit = distance / projectileSpeed

			if not (ranged.Name == "Longbow" or ranged.Name == "Crossbow" or ranged.Name == "Heavy Bow") then
				task.delay(timeToHit + 0.08, function()
					if cast.UserData and cast.StateInfo and cast.StateInfo.UpdateConnection then
						if Toggles.ShowLine.Value then
							local part = Instance.new("Part")
							part.Anchored = true
							part.CanCollide = false
							part.Material = Enum.Material.Neon
							part.Color = Options.linecolor.Value
							part.Size = Vector3.new(0.1, 0.1, (Head.Position - HumanoidRootPart.Position).Magnitude)
							part.CFrame = CFrame.new(HumanoidRootPart.Position, Head.Position)
								* CFrame.new(0, 0, -part.Size.Z / 2)
							part.Transparency = 0
							part.Parent = workspace
							task.spawn(function()
								local fadeTime = 2
								local steps = 30
								for i = 1, steps do
									part.Transparency = i / steps
									task.wait(fadeTime / steps)
								end
								part:Destroy()
							end);
						end
						metadata._mainCaster.RayHit:Fire(cast, {
							Distance = 1,
							Instance = Head,
							Material = Enum.Material.SmoothPlastic,
							Position = Head.Position,
							Normal = Vector3.yAxis,
						}, nil, cast.RayInfo.CosmeticBulletObject)
						cast:Terminate()
					end
				end)
			end

			if metadata._clientAmmoVO.Value ~= 0 then
				local cooldown = metadata._itemConfig.cooldown;
				if Toggles.safe_mode_ragebot.Value then
					cooldown = cooldown + Options.safe_mode_slider1.Value
				end;
				task.wait(cooldown);
			end;

			metadata.canShootBulletssss = true;
		end
	end));
end
end
local snipertext = "";
misc3 = misc_tab:AddTab("sniper");
local status = misc3:AddLabel("status: idle")
misc3:AddInput("sniper", {
    Placeholder = "enter username or userid";
    Default = "";
    ClearTextOnFocus = false;
    Callback = function(Text)
        snipertext = Text;
    end;
});
misc3:AddButton({
    Text = "snipe player";
    Func = function()
        local input = snipertext;
        if not input or input == "" then
            status:SetText("status: no input (0x00)");
            return;
        end;
        local userId = tonumber(input);
        if not userId then
            local success, result = pcall(function()
                return game:GetService("Players"):GetUserIdFromNameAsync(input);
            end);
            if success then
                userId = result;
            else
                status:SetText("status: invalid username");
                return;
            end;
        end;
        status:SetText("status: searching");
        spawn(function()
            local Success, InServer, _, PlaceId, JobId = network:InvokeServer("GetPlayerPlaceInstanceInfo", userId);
            if JobId then
                local serverInfo;
                local HttpService = game:GetService("HttpService");
                local ok, res = pcall(function()
                    return HttpService:JSONDecode(HttpService:GetAsync("https://games.roblox.com/v1/games/"  .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"));
                end);
                if ok and res and res.data then
                    for _, v in pairs(res.data) do
                        if v.id == JobId then
                            serverInfo = v;
                            break;
                        end;
                    end;
                end;
                local msg = "status: user found, teleporting:";
                if serverInfo then
                    local players = serverInfo.playing or "?";
                    local maxPlayers = serverInfo.maxPlayers or "?";
                    local region = serverInfo.region or "unknown";
                    msg ="status: user found | " .. players .. "/" .. maxPlayers .. " | region: " .. region;
                end;
                status:SetText(msg);
                wait(1);
                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceId, JobId, game.Players.LocalPlayer, "", "=");
            else
                wait(0.8);
                status:SetText("status: target not playing cw");
            end;
        end);
    end;
});
settings:AddLabel("menu bind"):AddKeyPicker("menubind", {Default = "RightAlt", NoUI = true, Text = "toggle ui"});
library.ToggleKeybind = Options.menubind;
settings:AddToggle('WatermarkEnabled', {
    Text = 'watermark',
    Default = false,
    Callback = function(Value)
        library:SetWatermarkVisibility(Value)
    end
});
local function UpdateKeybindUI(option, mode)
    if not option.Keybind then return end
    if mode == 'all' then
        option.Keybind.NoUI = false
	end
end
local function UpdateKeybinds(mode)
    if not library.KeybindFrame then return end
    if mode == 'none' then
        library.KeybindFrame.Visible = false
        return
    end
    library.KeybindFrame.Visible = true
    for _, option in pairs(Options) do
        UpdateKeybindUI(option, mode)
    end
end
settings:AddToggle('keybindmode', {
    Text = 'keybind mode',
    Default = false,
    Callback = function(Value)
        if not Value then
            library.KeybindFrame.Visible = false
        else
            UpdateKeybinds(CurrentKeybindMode)
        end
    end
})
settings:AddDropdown('keybindoptions', {
    Text = 'keybind options',
    Default = 'all',
    Values = {'all', 'none'},
    Callback = function(Value)
        CurrentKeybindMode = Value
        UpdateKeybinds(Value)
    end
})
do
    local FrameTimer = tick()
    local FrameCounter = 0
    local FPS = 60
    
    runservice.RenderStepped:Connect(LPH_JIT_MAX(function()
        FrameCounter = FrameCounter + 1
        if (tick() - FrameTimer) >= 1 then
            FPS = FrameCounter
            FrameTimer = tick()
            FrameCounter = 0
        end
        
        if Toggles.WatermarkEnabled and Toggles.WatermarkEnabled.Value then
            local ping = mathfloor(localplayer:GetNetworkPing() * 1000)
            library:SetWatermark(('nil.solutions | %s fps | %s ms'):format(mathfloor(FPS), ping))
        end
    end));
end
library.Watermark.AnchorPoint = vector2new(1, 1)
library.Watermark.Position = UDim2.new(1, -20, 0.05, 0)
thememanager:SetLibrary(library);
thememanager:SetFolder("serenium");
savemanager:SetLibrary(library);
savemanager:SetFolder("serenium/configs");
savemanager:BuildConfigSection(tabs.settings);
savemanager:LoadAutoloadConfig();
local function CreateCharacterVisuals()
    local charHighlight = Instance.new("Highlight")
    charHighlight.Name = "CharacterVisualsHighlight"
    charHighlight.FillTransparency = 1
    charHighlight.OutlineTransparency = 0

    local originalData = {
        Parts = {}, -- [Part] = {Material, Color, Transparency, TextureID}
        Decals = {}, -- [Decal/Texture] = {Texture, Transparency}
        Meshes = {}, -- [SpecialMesh] = {TextureId, MeshId}
        Accessories = {}, -- List of accessories
        Char = nil
    }

    local trailGhosts = {}
    local lastSettings = {}
    local appliedToChar = nil
    local charConnections = {}

    local function ClearConnections()
        for _, v in pairs(charConnections) do
            if v and v.Disconnect then v:Disconnect() end
        end
        charConnections = {}
    end

    local function ClearOriginalData()
        originalData.Parts = {}
        originalData.Decals = {}
        originalData.Meshes = {}
        originalData.Accessories = {}
        originalData.Char = nil
    end

    local function StoreOriginalData(char)
        if originalData.Char == char then return end
        ClearOriginalData()
        originalData.Char = char
        
        for _, v in ipairs(char:GetDescendants()) do
            if v:IsA("BasePart") then
                local isHRP = (v.Name == "HumanoidRootPart")
                local isHitbox = v.Name:lower():find("hitbox")
                if isHRP or isHitbox then continue end

                originalData.Parts[v] = {
                    Material = v.Material,
                    Color = v.Color,
                    Transparency = v.Transparency
                }
                if v:IsA("MeshPart") then
                    originalData.Parts[v].TextureID = v.TextureID
                end
                
                local sm = v:FindFirstChildOfClass("SpecialMesh")
                if sm then
                    originalData.Meshes[sm] = {
                        TextureId = sm.TextureId,
                        MeshId = sm.MeshId
                    }
                end
            elseif v:IsA("Decal") or v:IsA("Texture") then
                originalData.Decals[v] = {
                    Texture = v.Texture,
                    Transparency = v.Transparency
                }
            elseif v:IsA("Accessory") then
                table.insert(originalData.Accessories, v)
            end
        end
    end

    local function ApplyVisuals()
        local char = localplayer.Character
        if not char or not next(originalData.Parts) then return end
        
        local isRainbow = Toggles.RainbowCharacter and Toggles.RainbowCharacter.Value
        local customColor = Toggles.CustomMaterialColor and Toggles.CustomMaterialColor.Value
        local mat = Classes.CharacterMaterial and Classes.CharacterMaterial.Value
        local matColor = Classes.CharacterMaterialColor and Classes.CharacterMaterialColor.Value
        local transparency = Classes.CharacterTransparency and Classes.CharacterTransparency.Value or 0
        local removeAcc = Toggles.RemoveAccessories and Toggles.RemoveAccessories.Value
        local outlineGlow = Classes.OutlineGlow and Classes.OutlineGlow.Value
        local glowColor = Classes.OutlineGlowColor and Classes.OutlineGlowColor.Value

        local isForceField = (mat == "ForceField")
        local isNeon = (mat == "Neon")

        -- Apply to base parts
        for part, data in pairs(originalData.Parts) do
            if not part or not part.Parent then continue end
            
            -- Material
            if mat == "ForceField" then
                part.Material = Enum.Material.ForceField
            elseif mat == "Neon" then
                part.Material = Enum.Material.Neon
            elseif mat == "Plastic" then
                part.Material = Enum.Material.Plastic
            else
                part.Material = data.Material
            end
            
            -- Color
            if not isRainbow then
                if customColor or isForceField or isNeon then
                    part.Color = matColor
                else
                    part.Color = data.Color
                end
            end
            
            -- Transparency
            if transparency > 0 and data.Transparency < 0.95 then
                part.Transparency = transparency
            else
                part.Transparency = data.Transparency
            end
            
            -- MeshPart Textures
            if part:IsA("MeshPart") then
                local isHead = (part.Name == "Head")
                if (isRainbow or isForceField) and not isHead then
                    part.TextureID = ""
                else
                    part.TextureID = data.TextureID or ""
                end
            end
        end
        
        -- Apply to SpecialMeshes
        for mesh, data in pairs(originalData.Meshes) do
            if not mesh or not mesh.Parent then continue end
            local isHead = (mesh.Parent.Name == "Head")
            if (isRainbow or isForceField) and not isHead then
                mesh.TextureId = ""
            else
                mesh.TextureId = data.TextureId
            end
        end
        
        -- Apply to Decals/Textures
        for decal, data in pairs(originalData.Decals) do
            if not decal or not decal.Parent then continue end
            local isFace = decal.Name:lower():find("face") or (decal.Parent and decal.Parent.Name == "Head")
            
            if (isRainbow or isForceField) and not isFace then
                decal.Texture = ""
            else
                decal.Texture = data.Texture
            end
            
            if transparency > 0 and not isFace then
                decal.Transparency = math.max(data.Transparency, transparency)
            else
                decal.Transparency = data.Transparency
            end
        end
        
        -- Accessories
        if removeAcc then
            for _, acc in ipairs(originalData.Accessories) do
                if acc and acc:IsA("Accessory") and acc.Parent == char then
                    local isFace = acc.Name:lower():find("face") or acc.Name:lower():find("facial") or acc.Name:lower():find("head")
                    if not isFace then
                        acc.Parent = nil
                    end
                end
            end
            -- Also scan current character children for any stragglers not in originalData
            for _, v in ipairs(char:GetChildren()) do
                if v:IsA("Accessory") then
                    local isFace = v.Name:lower():find("face") or v.Name:lower():find("facial") or v.Name:lower():find("head")
                    if not isFace then
                        if not table.find(originalData.Accessories, v) then
                            table.insert(originalData.Accessories, v)
                        end
                        v.Parent = nil
                    end
                end
            end
        else
            for _, acc in ipairs(originalData.Accessories) do
                if acc and acc:IsA("Accessory") and acc.Parent ~= char then
                    acc.Parent = char
                end
            end
        end
        
        -- Outline Glow
        if outlineGlow then
            charHighlight.Parent = char
            charHighlight.OutlineColor = isRainbow and getgenv().serenium_global_rainbow_color or glowColor
        else
            charHighlight.Parent = nil
        end
    end

    runservice.Heartbeat:Connect(LPH_JIT_MAX(function()
        local char = localplayer.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then
            charHighlight.Parent = nil
            appliedToChar = nil
            if backtrackGhost then backtrackGhost:Destroy(); backtrackGhost = nil end
            for _, g in ipairs(trailGhosts) do g:Destroy() end
            trailGhosts = {}
            ClearOriginalData()
            ClearConnections()
            return
        end
        
        -- Check if re-storing is needed
        if originalData.Char ~= char then
            -- Wait for appearance: check for any accessory or non-default color
            local appearanceReady = false
            for _, v in ipairs(char:GetChildren()) do
                if v:IsA("Accessory") then
                    appearanceReady = true
                    break
                elseif v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
                    if v.Color ~= Color3.fromRGB(163, 162, 165) then
                        appearanceReady = true
                        break
                    end
                end
            end
            
            if appearanceReady then
                ClearConnections()
                StoreOriginalData(char)
                
                -- Dynamic Accessory Handling
                table.insert(charConnections, char.ChildAdded:Connect(function(child)
                    if child:IsA("Accessory") then
                        task.wait() -- Let it initialize
                        local removeAcc = Toggles.RemoveAccessories and Toggles.RemoveAccessories.Value
                        local isFace = child.Name:lower():find("face") or child.Name:lower():find("facial") or child.Name:lower():find("head")
                        
                        if not table.find(originalData.Accessories, child) then
                            table.insert(originalData.Accessories, child)
                        end
                        
                        if removeAcc and not isFace then
                            child.Parent = nil
                        end
                    end
                end))

                appliedToChar = nil -- Force update
            else
                return -- Skip until loaded
            end
        end
        
        -- Settings monitoring
        local isRainbow = Toggles.RainbowCharacter and Toggles.RainbowCharacter.Value
        local currentSettings = {
            Material = Classes.CharacterMaterial and Classes.CharacterMaterial.Value,
            Color = Classes.CharacterMaterialColor and Classes.CharacterMaterialColor.Value,
            Transparency = Classes.CharacterTransparency and Classes.CharacterTransparency.Value,
            Rainbow = isRainbow,
            CustomColor = Toggles.CustomMaterialColor and Toggles.CustomMaterialColor.Value,
            RemoveAcc = Toggles.RemoveAccessories and Toggles.RemoveAccessories.Value,
            OutlineGlow = Classes.OutlineGlow and Classes.OutlineGlow.Value,
            OutlineColor = Classes.OutlineGlowColor and Classes.OutlineGlowColor.Value
        }
        
        local settingsChanged = (appliedToChar ~= char)
        if not settingsChanged then
            for k, v in pairs(currentSettings) do
                if lastSettings[k] ~= v then
                    settingsChanged = true
                    break
                end
            end
        end
        
        if settingsChanged then
            lastSettings = currentSettings
            appliedToChar = char
            ApplyVisuals()
        end
        
        -- Frame updates for Rainbow
        if isRainbow then
            for part, _ in pairs(originalData.Parts) do
                if part and part.Parent and part:IsA("BasePart") then
                    part.Color = getgenv().serenium_global_rainbow_color
                end
            end
            if charHighlight.Parent then
                charHighlight.OutlineColor = globalRainbowColor
            end
        end
    end));
end
taskspawn(CreateCharacterVisuals)

local function CreateMoreVisuals()
    local fovCircle = drawingnew("Circle")
    fovCircle.Thickness = 1
    fovCircle.NumSides = 100
    fovCircle.Visible = false
    
    local fovCircleOutline = drawingnew("Circle")
    fovCircleOutline.Thickness = 1
    fovCircleOutline.NumSides = 100
    fovCircleOutline.Visible = false
    
    local chOut1 = drawingnew("Line")
    local chOut2 = drawingnew("Line")
    local chOut3 = drawingnew("Line")
    local chOut4 = drawingnew("Line")
    
    local chLine1 = drawingnew("Line")
    local chLine2 = drawingnew("Line")
    local chLine3 = drawingnew("Line")
    local chLine4 = drawingnew("Line")
    
    local weaponHighlight = Instance.new("Highlight")
    weaponHighlight.Name = "WeaponCham"
    
    local lastCrosshairPos = userinputservice:GetMouseLocation()
    local currentRotation = 0

    -- Cache for Weapon Chams optimization
    local lastTool = nil
    local lastChamSettings = { Material = nil, Color = nil, Highlight = nil, HighlightColor = nil }

    runservice.Heartbeat:Connect(LPH_JIT_MAX(function(dt)
        -- Redundant FOV logic removed to prevent conflicts with Unified FOV handling in ESP section.

        -- Crosshair
        if Classes.CrosshairEnabled and Classes.CrosshairEnabled.Value then
            local mouseLoc = userinputservice:GetMouseLocation()
            local smoothAmount = math.max(1, Classes.CrosshairSmoothing.Value)
            lastCrosshairPos = lastCrosshairPos + (mouseLoc - lastCrosshairPos) / smoothAmount
            
            local center = vector2new(math.round(lastCrosshairPos.X), math.round(lastCrosshairPos.Y))
            local size = Classes.CrosshairSize.Value
            local gap = Classes.CrosshairGap.Value
            local thick = Classes.CrosshairThickness.Value
            local color = Classes.CrosshairColor.Value
            
            if Classes.CrosshairSpin.Value then
                currentRotation = (currentRotation + (Classes.CrosshairSpinSpeed.Value * dt)) % (math.pi * 2)
            else
                currentRotation = 0
            end

            local function getRotated(offset)
                local cos = mathcos(currentRotation)
                local sin = math.sin(currentRotation)
                return vector2new(
                    (offset.X * cos) - (offset.Y * sin),
                    (offset.X * sin) + (offset.Y * cos)
                )
            end

            -- Update Lines
            local function updateLine(line, outline, fromOff, toOff)
                local fRot = getRotated(fromOff)
                local tRot = getRotated(toOff)
                local f = vector2new(math.round((center + fRot).X), math.round((center + fRot).Y))
                local t = vector2new(math.round((center + tRot).X), math.round((center + tRot).Y))
                
                if Classes.CrosshairOutline and Classes.CrosshairOutline.Value then
                    local dir = (tRot - fRot)
                    local len = dir.Magnitude
                    if len > 0 then
                        local norm = dir / len
                        outline.From = vector2new(math.round((f - norm).X), math.round((f - norm).Y))
                        outline.To = vector2new(math.round((t + norm).X), math.round((t + norm).Y))
                    else
                        outline.From = f
                        outline.To = t
                    end
                    outline.Thickness = thick + 1.5
                    outline.Color = Color3.new(0, 0, 0)
                    outline.ZIndex = 0.15
                    outline.Visible = true
                else
                    outline.Visible = false
                end
                
                line.From = f
                line.To = t
                line.Thickness = thick
                line.Color = color
                line.ZIndex = 1
                line.Visible = true
            end

            updateLine(chLine1, chOut1, vector2new(0, gap), vector2new(0, gap + size))
            updateLine(chLine2, chOut2, vector2new(0, -gap), vector2new(0, -(gap + size)))
            updateLine(chLine3, chOut3, vector2new(gap, 0), vector2new(gap + size, 0))
            updateLine(chLine4, chOut4, vector2new(-gap, 0), vector2new(-(gap + size), 0))
        else
            chLine1.Visible = false; chLine2.Visible = false; chLine3.Visible = false; chLine4.Visible = false
            chOut1.Visible = false; chOut2.Visible = false; chOut3.Visible = false; chOut4.Visible = false
        end
    end));
end
taskspawn(CreateMoreVisuals)
end
InitializeCombat()

thememanager:ApplyToTab(tabs.settings);
task.wait(0.1);
end
InitializeSerenium()
