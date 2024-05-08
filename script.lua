local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "dk Beta", HidePremium = false, SaveConfig = true, ConfigFolder = "dk"})


OrionLib:MakeNotification({
	Name = "Bem vindos!",
	Content = "Qualquer erro me avise!",
	Image = "rbxassetid://4483345998",
	Time = 5
})


function Teleport(teLeportPlace)
    local player = game.players.localPlayer
    player.character.HumanoidRootPart.CFrame = teLeportPlace
end


_G.RankUp = true
_G.Teleport = true
_G.AutoAtk = true
_G.Eggs = true
        --funcao

        function Eggs()
            while _G.Eggs == true do
                
                local args = {
                    [1] = {
                        [1] = "BuyTier",
                        [2] = workspace:WaitForChild("Client"):WaitForChild("Summon Stars"):WaitForChild("Demon Slayer"):WaitForChild("Basic Tier"),
                        [3] = "E",
                        [4] = "Demon Slayer"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                wait(0.5)
            end
        end



        function AutoAtk()
            while _G.AutoAtk == true do
                
                local args = {
                    [1] = {
                        [1] = "Click"
                    }
                }
                
                game:GetService("ReplicatedStorage").Remotes.Server:FireServer(unpack(args))
                wait(0.01)

            end
        end


        function RankUp()
            while _G.RankUp == true do
                
                local args = {
                    [1] = {
                        [1] = "Rank Up"
                    }
                }
                
                game:GetService("ReplicatedStorage").Remotes.Server:FireServer(unpack(args))
                wait(1.0)
                
            end
        end



--tab autofarmtab

local autofarmtab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = autofarmtab:AddSection({
    Name = "AutoFarm Mobs"
})


autofarmtab:AddToggle({
    Name = "AutoAtk",
    Default = false,
    Callback = function(Value)
    _G.AutoAtk = Value
    AutoAtk()
    end
})


autofarmtab:AddToggle({
    Name = "Rank up",
    Default = false,
    Callback = function(Value)
    _G.RankUp = Value
    RankUp()
    end
})


    --AutoEgg TAB
    --AutoEgg TAB
    --AutoEgg TAB


local AutoEggTab = Window:MakeTab({
    Name = "AutoEgg",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


local Section = AutoEggTab:AddSection({
    Name = "Eggs"
})


AutoEggTab:AddToggle({
    Name = "Demon Slayer",
    Callback = function(Value)
        _G.Eggs = Value
        Eggs()
      end    
})

AutoEggTab:AddToggle({
    Name = "Magic Academy",
    Callback = function()

      end    
})

AutoEggTab:AddToggle({
    Name = "Dragon Planet",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Shinobi Vilage",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Virtual Town",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Wall Sentinels",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Sea of Dreams",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Clover Village",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Hero City",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Tokyo Warzone",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Sins Kingdom",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Ant Village",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Bizarre Town",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Chain City",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Metropolis City",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Tokyo city",
    Callback = function()
              print("button pressed")
      end    
})

AutoEggTab:AddToggle({
    Name = "Solo City",
    Callback = function()
              print("button pressed")
      end    
})


        --Teleport WORLDS
        --Teleport WORLDS
        --Teleport WORLDS


        local TeleportTab = Window:MakeTab({
            Name = "Teleport ",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })


        local Section = TeleportTab:AddSection({
            Name = "Teleport world"
        })

        TeleportTab:AddButton({
            Name = "Trial",
            Callback = function()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")

                local function entrarNoTrial()
                    local args = {
                        [1] = {
                            [1] = "ChangeZone",
                            [2] = "Trial Easy"
                        }
                    }
                    
                    ReplicatedStorage.Remotes.Server:FireServer(unpack(args))
                    
                    wait(1) -- Espera um segundo antes de chamar a próxima função
                    
                    local args2 = {
                        [1] = {
                            [1] = "EnterTrial",
                            [2] = "Easy"
                        }
                    }
                    
                    ReplicatedStorage.Remotes.Server:FireServer(unpack(args2))
                end
                
                -- Chama a função para entrar no trial
                entrarNoTrial()                
              end    
        })

        TeleportTab:AddButton({
            Name = "Demon Slayer",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Demon Slayer"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                wait(.5)                
              end    
        })

        TeleportTab:AddButton({
            Name = "Magic Academy",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Jujutsu Kaisen"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Dragon Planet",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Dragon Ball"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Shinobi Vilage",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Naruto"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Virtual Town",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Sword Art Online"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Wall Sentinels",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Attack On Titan"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Sea of Dreams",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "One Piece"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Clover Village",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Black Clover"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Hero City",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "My Hero Academia"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Tokyo Warzone",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Tokyo Revengers"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Sins Kingdom",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "7DS"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Ant Village",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "HxH"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Bizarre Town",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "ChangeZone",
                        [2] = "Jojo"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                
              end    
        })

        TeleportTab:AddButton({
            Name = "Chain City",
            Callback = function()
                      print("button pressed")
              end    
        })

        TeleportTab:AddButton({
            Name = "Metropolis City",
            Callback = function()
                      print("button pressed")
              end    
        })

        TeleportTab:AddButton({
            Name = "Tokyo city",
            Callback = function()
                      print("button pressed")
              end    
        })

        TeleportTab:AddButton({
            Name = "Solo City",
            Callback = function()
                      print("button pressed")
              end    
        })


        --MISC
        local MiscTab = Window:MakeTab({
            Name = "Misc",
            Icon = "rbxassetid://4483345998",
            PremiumOnly = false
        })


        local Section = MiscTab:AddSection({
            Name = "Misc"
        })



        MiscTab:AddButton({
            Name = "Marks/Marcas",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "SpinMark"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                wait(1.0)
              end    
        })


        MiscTab:AddButton({
            Name = "Curses/Maldições",
            Callback = function()
            local player = game.Players.LocalPlayer.Character
            local part = game.Workspace.Client.Maps["7DS"].Debris["Area 2x"]
            player.HumanoidRootPart.CFrame = part.CFrame
            wait(.5)
        end    
        })

        MiscTab:AddButton({
            Name = "shiny",
            Callback = function()
            local player = game.Players.LocalPlayer.Character
            local part = game.workspace.Client.Maps["Dragon Ball"].Interact.Shiny
            player.HumanoidRootPart.CFrame = part.CFrame
            wait(.5)
        end    
        })

        MiscTab:AddButton({
            Name = "Auras/",
            Callback = function()
            local player = game.Players.LocalPlayer.Character
            local part = game.workspace.Client.Maps["Dragon Ball"].Interact.Shiny
            player.HumanoidRootPart.CFrame = part.CFrame
            wait(.5)
        end    
        })

        MiscTab:AddButton({
            Name = "Sword Enchant",
            Callback = function()
            local player = game.Players.LocalPlayer.Character
            local part = game.workspace.Client.Maps["Dragon Ball"].Interact.Shiny
            player.HumanoidRootPart.CFrame = part.CFrame
            wait(.5)
        end    
        })

        MiscTab:AddButton({
            Name = "Grimoires",
            Callback = function()
                local args = {
                    [1] = {
                        [1] = "SpinGrimoire",
                        [2] = "Grimoire1"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
                wait(.5)
        end    
        })

        MiscTab:AddButton({
            Name = "Quirks",
            Callback = function()
            local player = game.Players.LocalPlayer.Character
            local part = game.Workspace.Client.Maps["7DS"].Debris["Area 2x"]
            player.HumanoidRootPart.CFrame = part.CFrame
            wait(.5)
        end    
        })

        MiscTab:AddButton({
            Name = "Area 2x",
            Callback = function()
            local player = game.Players.LocalPlayer.Character
            local part = game.Workspace.Client.Maps["7DS"].Debris["Area 2x"]
            player.HumanoidRootPart.CFrame = part.CFrame
            wait(.5)
        end    
        })

        MiscTab:AddButton({
            Name = "Stands",
            Callback = function()
            local player = game.Players.LocalPlayer.Character
            local part = game.Workspace.Client.Maps["7DS"].Debris["Area 2x"]
            player.HumanoidRootPart.CFrame = part.CFrame
            wait(.5)
        end    
        })



        --local part = game.Workspace.Client.Maps["Demon Slayer"].SpawnPoint

        --local part = game.workspace.Client.Maps["Dragon Ball"].interact.Shiny




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


--MOB Asaca
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

--MOB Shiba
local toggleTeleportLoopButton3 = autofarmtab:AddToggle({
    Name = "Shiba",
    Title = "Ativar Loop de Teleport (M31-M34)",
    Description = "Ativa ou desativa o loop de teleport para M11-M16",
    Callback = function(isEnabled)
        isTeleportLoopEnabled = isEnabled
        if isTeleportLoopEnabled then
            -- Iniciar o loop de teleport para M11-M16
            teleportLoop({
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M31.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M32.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M33.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M34.Head
            })
        end
    end
})

--Mob Moutran
local toggleTeleportLoopButton3 = autofarmtab:AddToggle({
    Name = "Moutran",
    Title = "Ativar Loop de Teleport (M41-M42)",
    Description = "Ativa ou desativa o loop de teleport para M11-M16",
    Callback = function(isEnabled)
        isTeleportLoopEnabled = isEnabled
        if isTeleportLoopEnabled then
            -- Iniciar o loop de teleport para M11-M16
            teleportLoop({
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M41.Head,
                game.Workspace.Client.Maps["Demon Slayer"].Mobs.M42.Head
            })
        end
    end
})



--local toggleTeleportLoopButton1 = autofarmtab:AddToggle({
    Name = "Test trial",
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





local args = {
    [1] = {
        [1] = "BuyTier",
        [2] = workspace:WaitForChild("Client"):WaitForChild("Summon Stars"):WaitForChild("Demon Slayer"):WaitForChild("Basic Tier"),
        [3] = "E",
        [4] = "Demon Slayer"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):FireServer(unpack(args))
wait(.5)   
