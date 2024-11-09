local function createChaos()
    -- Перебираем все объекты в Workspace
    for _, obj in pairs(game.Workspace:GetChildren()) do
        -- Проверяем, является ли объект физическим (чтобы не изменять игрока или UI)
        if obj:IsA("Part") or obj:IsA("Model") the
            if obj:IsA("Part") then
                obj.Color = Color3.new(math.random(), math.random(), math.random())
                
                -- Изменение размера на случайный
                obj.Size = Vector3.new(math.random(1, 10), math.random(1, 10), math.random(1, 10))
                
                -- Перемещение объекта на случайную позицию
                obj.Position = Vector3.new(math.random(-50, 50), math.random(1, 50), math.random(-50, 50))
            end
            
            -- Вращение объекта
            obj.Orientation = Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360))
        end
    end
end

-- Создание звуков и эффектов
local function createRandomSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://12345678"  -- Замените на ID вашего звука
    sound.Volume = math.random()
    sound.PlaybackSpeed = math.random(0.5, 2)
    sound.Parent = game.Workspace
    sound:Play()
end

local function createRandomExplosion()
    local explosion = Instance.new("Explosion")
    explosion.Position = Vector3.new(math.random(-50, 50), math.random(1, 50), math.random(-50, 50))
    explosion.BlastRadius = math.random(10, 50)
    explosion.Parent = game.Workspace
end

-- Запуск хаоса каждые 2 секунды
while true do
    createChaos()
    createRandomSound()
    createRandomExplosion()
    wait(2)  -- Ожидаем 2 секунды перед следующим "взрывом хаоса"
end
