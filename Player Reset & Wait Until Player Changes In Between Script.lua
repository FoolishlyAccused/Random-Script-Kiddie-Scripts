

game.Players.LocalPlayer.Character.Head:Destroy() --resets player
wait(8)
-----------------------------------if the player dies it will reset the script
game:GetService("RunService").Stepped:connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(11)
end) end)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
Clone = game:GetService("Players").LocalPlayer.Character.LowerTorso.Root:Clone()
  game:GetService("Players").LocalPlayer.Character.LowerTorso.Root:Destroy()
  Clone.Parent = game:GetService("Players").LocalPlayer.Character
end)
-------------------------------
--script of your chouice goes after this
