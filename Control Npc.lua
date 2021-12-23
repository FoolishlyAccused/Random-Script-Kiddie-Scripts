--i tihnk you just execute and click on a npc or i think it was left control and click to control it, a npc that is frozen or cant move wont work

spawn(function()
  while wait() do
    game.Players.LocalPlayer.MaximumSimulationRadius = math.huge;
    setsimulationradius(math.huge);
  end
end)

local OGPN = game.Players.LocalPlayer.Name
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.Button1Down:connect(function()
  if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) and Mouse.Target ~= nil and Mouse.Target.Parent.Name ~= "Workspace" and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
    local Char = Mouse.Target.Parent
    Player.Character = Mouse.Target.Parent
    workspace.CurrentCamera.CameraSubject = Char
    Char.Animate.Disabled = true
   wait(0.1)
    Char.Animate.Disabled = false
  end
end)

Mouse.KeyDown:connect(function()
  if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Quote) then
    for i,v in pairs(game.Workspace:GetDescendants()) do
      if v.Name == OGPN then
        local Char = v
        Player.Character = v
        workspace.CurrentCamera.CameraSubject = Char
        Char.Animate.Disabled = true
       wait(0.1)
        Char.Animate.Disabled = false
      end
    end
  end
end)
