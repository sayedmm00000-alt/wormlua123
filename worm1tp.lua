Teleport.Parent = Frame
Teleport.Size = UDim2.new(0, 130, 0, 50)    Teleport.Position = UDim2.new(0, 160, 0, 140)    Teleport.Text ="TELEPORT"    Teleport.BackgroundColor3 = Color3.new(0.8, 0, 0)    Teleport.Visible = false

Enter.MouseButton1Click:Connect(function()        if PassBox.Text == password then
        correct = true
        Label.Text ="Status: Unlocked - WormGPT V3.0"            Label.TextColor3 = Color3.new(0, 1, 0)            Save.Visible = true
        Teleport.Visible = true
        PassBox.Visible = false
        Enter.Visible = false
        notify("Password Correct - Teleport Ready")        else
        notify("Wrong Password Fuck Off")        end
end)    Save.MouseButton1Click:Connect(function()        if correct and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        savedPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        notify("Position Saved: "..math.floor(savedPos.X)..", "..math.floor(savedPos.Y)..", "..math.floor(savedPos.Z))        end
end)    Teleport.MouseButton1Click:Connect(function()        if correct and savedPos and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedPos)            notify("Teleported Back Bitch")        else
        notify("No Position Saved Yet")        end
end)end
