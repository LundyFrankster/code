local Try: number = 500;
local setincomingreplicationlag = @native function(Number: number): ()
    settings().Network.IncomingReplicationLag = Number;
end;
local Players = cloneref(game:GetService("Players"));
local Player = Players.LocalPlayer;
local RunService = game:GetService("RunService");
RunService.PreRender:Connect(@native function()
    if not Player or not Player.Character or not Player.Character:FindFirstChild("Humanoid") then
        return;
    end;
    Player.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
    Player.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
    Player.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
end);
