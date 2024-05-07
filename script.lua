local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "dk Beta", HidePremium = false, SaveConfig = true, ConfigFolder = "dk"})


--tab autofarmtab

local autofarmtab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = autofarmtab:AddSection({
    Name = "AutoFarm Mobs"
})



-- Variável para controlar se o loop de teleport está ativado ou desativado
local isTeleportLoopEnabled = false


-- Função para teleportar o jogador local para uma parte específica
local function teleportLocalPlayerToPart(part)
    -- Verificar se o jogador local está no jogo
    local player = game.Players.LocalPlayer
    if player and player.Character then
        -- Verificar se o Particular (Part) existe
        if part then
            -- Teleportar o jogador local para a posição do Particular (Part)
            player.Character:WaitForChild("HumanoidRootPart").CFrame = part.CFrame
            wait(0.5)  -- Aguardar um curto período após o teletransporte
        else
            print("Erro: O Particular (Part) especificado não foi encontrado.")
        end
    else
        print("Erro: O jogador local não está disponível.")
    end
end

-- Função de loop para teleportar repetidamente o jogador para diferentes partes
local function teleportLoop(parts)
    while isTeleportLoopEnabled do
        for _, part in ipairs(parts) do
            teleportLocalPlayerToPart(part)
        end
    end
end

-- MOB Dikai
-- Adiciona um botão de alternância para ativar/desativar o loop de teleport para M01-M07
local toggleTeleportLoopButton1 = autofarmtab:AddToggle({
    Name = "Dikai",
    Title = "Ativar Loop de Teleport (M01-M07)",
    Description = "Ativa ou desativa o loop de teleport para M01-M07",
    Callback = function(isEnabled)
        isTeleportLoopEnabled = isEnabled
        if isTeleportLoopEnabled then
            -- Iniciar o loop de teleport para M01-M07
            teleportLoop({
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M01.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M02.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M03.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M04.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M05.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M06.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M07.Head
            })
        end
    end
})


--MOB Emo
-- Adiciona um botão de alternância para ativar/desativar o loop de teleport para M11-M16
local toggleTeleportLoopButton2 = autofarmtab:AddToggle({
    Name = "Emo",
    Title = "Ativar Loop de Teleport (M11-M16)",
    Description = "Ativa ou desativa o loop de teleport para M11-M16",
    Callback = function(isEnabled)
        isTeleportLoopEnabled = isEnabled
        if isTeleportLoopEnabled then
            -- Iniciar o loop de teleport para M11-M16
            teleportLoop({
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M11.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M12.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M13.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M14.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M15.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M16.Head
            })
        end
    end
})



local toggleTeleportLoopButton3 = autofarmtab:AddToggle({
    Name = "Asaca",
    Title = "Ativar Loop de Teleport (M21-M25)",
    Description = "Ativa ou desativa o loop de teleport para M11-M16",
    Callback = function(isEnabled)
        isTeleportLoopEnabled = isEnabled
        if isTeleportLoopEnabled then
            -- Iniciar o loop de teleport para M11-M16
            teleportLoop({
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M21.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M22.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M23.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M24.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M25.Head
            })
        end
    end
})