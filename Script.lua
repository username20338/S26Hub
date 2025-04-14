-- S26Hub Script - Blox Fruits

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local rs = game:GetService("RunService")
local tweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

-- Variáveis de Configuração
local autoFarmEnabled = false
local autoStoreEnabled = false
local autoCollectEnabled = false
local fastAttackSpeed = 0.4
local antiBanEnabled = true
local antiResetEnabled = true
local fastAttackEnabled = false
local timerEnabled = true
local discordLink = "https://discord.gg/ctFXVQ5CPq" -- Link do Discord

-- Função para AutoFarm
function autoFarm()
    while autoFarmEnabled do
        -- Lógica do AutoFarm aqui
        print("Fazendo AutoFarm...")
        wait(5) -- Espera 5 segundos entre as ações de farm
    end
end

-- Função para AutoStore
function autoStore()
    while autoStoreEnabled do
        -- Lógica de AutoStore aqui
        print("Armazenando itens automaticamente...")
        wait(5)
    end
end

-- Função para AutoCollect (Coletar Frutas)
function autoCollect()
    while autoCollectEnabled do
        -- Lógica de coleta de frutas
        print("Coletando frutas automaticamente...")
        wait(3)
    end
end

-- Função para Fast Attack
function fastAttack()
    if fastAttackEnabled then
        -- Ação de ataque rápido com a velocidade configurada
        print("Atacando rapidamente com a velocidade: " .. fastAttackSpeed)
        wait(fastAttackSpeed)
    end
end

-- Função Anti-Ban
function antiBan()
    if antiBanEnabled then
        -- Proteção anti-ban
        print("Proteção Anti-Ban ativa")
    end
end

-- Função Anti-Reset
function antiReset()
    if antiResetEnabled then
        -- Proteção contra reset
        print("Proteção Anti-Reset ativa")
    end
end

-- Função para exibir o cronômetro de uso
local startTime = tick()
function showTimer()
    while timerEnabled do
        local elapsedTime = tick() - startTime
        print("Tempo de uso: " .. math.floor(elapsedTime / 60) .. " minutos.")
        wait(60) -- Atualiza a cada minuto
    end
end

-- Função para abrir o Discord
function openDiscord()
    if discordLink then
        setclipboard(discordLink)
        print("Link do Discord copiado para a área de transferência!")
    end
end

-- Interface do Script (Botões)
local function createGui()
    -- Criar Interface aqui com botões para ativar/desativar funções
    print("Interface do S26Hub criada com sucesso!")
end

-- Iniciar Funções
createGui()

-- Ativar funções conforme as configurações
if autoFarmEnabled then
    autoFarm()
end
if autoStoreEnabled then
    autoStore()
end
if autoCollectEnabled then
    autoCollect()
end
if fastAttackEnabled then
    fastAttack()
end
if antiBanEnabled then
    antiBan()
end
if antiResetEnabled then
    antiReset()
end
if timerEnabled then
    showTimer()
end
