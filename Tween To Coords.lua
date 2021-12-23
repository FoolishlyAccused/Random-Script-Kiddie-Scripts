local CFrameEnd = CFrame.new(X, Y, Z) --OMFG PUT THE COORDS HERE
local Time =  --TIME IN SECONDS
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
tween:Play()
tween.Completed:Wait(E)