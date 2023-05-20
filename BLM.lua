local profile = {};

local sets = {
    Fastcast_Priority = {
        Body = 'Wizard\'s Coat',
    },
    Fishing = {
        Body = 'Fsh. Tunica',
        Hands = 'Fsh. Gloves',
        Ring2 = 'Albatross Ring',
        Legs = 'Fisherman \'s Hose',
        Feet = 'Waders',
    },
    Digging = {
        Body = 'Choc. Jack Coat',
        Hands = 'Chocobo Gloves',
        Legs = 'Chocobo Hose',
        Feet = 'Rider\'s Boots',
    },
    Idle = {
        Main = 'Terra\'s Staff',
        --Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Black Cloak',
        Hands = 'Errant Cuffs',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Astral Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Sorcerer\'s Sabots',
    },
    Resting = {
        Main = 'Pluto\'s Staff',
        Head = 'Wizard\'s Petasos',
        Neck = 'Checkered Scarf',
        Body = 'Errant Hpl.',
        Hands = 'Wizard\'s Gloves',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Baron\'s Slops',
        Feet = 'Sorcerer\'s Sabots',
    },
    DarkMagic = {
        Main = 'Pluto\'s Staff',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear1 = 'Cunning Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Errant Hpl.',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Sorcerer\'s Sabots',
    },
    DrainAspir = { -- Focus Dark Magic Skill then MagAcc then Int
        Main = 'Pluto\'s Staff',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear1 = 'Cunning Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Errant Hpl.',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Sorcerer\'s Sabots',
    },
    stun = {
        Main = 'Jupiter\'s Staff',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear1 = 'Cunning Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Errant Hpl.',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Sorcerer\'s Sabots',
    },
    nuke_general = {
        Main = 'Rose Wand +1',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Igqira Weskit',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Sorcerer\'s Sabots',
    },
    nuke_sorcy = {
        Main = 'Rose Wand +1',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Igqira Weskit',
        Hands = 'Wizard\'s Gloves',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Sorcerer\'s Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Sorcerer\'s Sabots',
    },
    nuke_Priority = {
        Main = {'Rose Wand +1', 'Solid Wand', 'Yew Wand +1', 'Pilgrim\'s Wand'},
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Wizard\'s Petasos', 'Seer\'s Crown'},
        Neck = {'Philomath Stole'},
        Ear1 = {'Moldavite Earring', 'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Black Cotehardie', 'Igqira Weskit'},
        Hands = {'Wizard\'s Gloves'},
        Ring1 = {'Zircon Ring'},
        Ring2 = {'Zircon Ring'},
        Back = {'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope', 'Mrc.Cpt. Belt', 'Friar\'s Rope'},
        Legs = {'Errant Slops', 'Seer\'s Slacks +1'},
        Feet = {'Wizard\'s Sabots'},
    },
    ElementalDots = { -- MAX INT
        Main = 'Rose Wand +1',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wizard\'s Petasos',
        Neck = 'Philomath Stole',
        Ear2 = 'Cunning Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Sorcerer\'s Sabots',
    },
    enfeeble_int = {
        Main = 'Rose Wand +1',
        Ammo = 'Phtm. Tathlum',
        Head = 'Igqira Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Cunning Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Errant Cuffs',
        Ring1 = 'Diamond Ring',
        Ring2 = 'Diamond Ring',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Sorcerer\'s Sabots',
    },
    enfeeble_mnd = {
        Main = 'Rose Wand +1',
        Head = 'Igqira Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Cunning Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Errant Pigaches',
    },
    Cure = {
        Main = 'Apollo\'s Staff',
        Head = 'Traveler\'s Hat',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Cunning Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Errant Hpl.',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Errant Slops',
        Feet = 'Errant Pigaches',
    },
    negativeHP = {
        Main = 'Asklepios',
        Ammo = 'Tiphia Sting',
        Head = 'Gold Hairpin',
        Neck = 'Star Necklace',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Cunning Earring',
        Body = 'Black Cotehardie',
        Hands = 'Errant Cuffs',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Blue Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Errant Pigaches',
    },
    -- itemnames = {
    --     Main = 'Asklepios', 'Rose Wand +1', 'Pluto\'s Staff',
    --     Ammo = 'Phtm. Tathlum',
    --     Head = 'Gold Hairpin', 'Wizard\'s Petasos', 'Igqira Tiara', 'Traveler\'s Hat'
    --     Neck = 'Star Necklace', 'Black Neckerchief', 'Checkered Scarf',
    --     Ear1 = 'Moldavite Earring',
    --     Ear2 = 'Cunning Earring',
    --     Body = 'Ryl.Sqr. Robe', 'Igqira Weskit', 'Seer\'s Tunic +1',
    --     Hands = 'Wizard\'s Gloves',
    --     Ring1 = 'Astral Ring',
    --     Ring2 = 'Astral Ring',
    --     Back = 'Rainbow Cape', 'Zircon Ring', 'Black Cape +1',
    --     Waist = 'Penitent\'s Rope',
    --     Legs = 'Baron\'s Slops', 'Errant Slops',
    --     Feet = 'Wizard\'s Sabots',
    -- },
};

profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    UseRefreshIdle = true;
    UseSorcy = false;
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    print('Loaded Blackmage (75) Set');
    print('Current Settings: ');
    print('UseRefreshIdle: ' .. tostring(Settings.UseRefreshIdle));
    print('UseSorcy: '.. tostring(Settings.UseSorcy));
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    if (args[1] == 'idlerefresh') then
        if (Settings.UseRefreshIdle == true) then
            Settings.UseRefreshIdle = false;
        else
            Settings.UseRefreshIdle = true;
        end
    end
    if (args[1] == 'sorcy') then
        if (Settings.UseSorcy == true) then
            Settings.UseSorcy = false;
            print('Toggling Sorcy : OFF');
        else
            Settings.UseSorcy = true;
            print('Toggling Sorcy : ON');
        end
    end
end

--Custom Functions. 
-- --Checks for Sorc Ring latent.
function SorcyRing()
    local player = gData.GetPlayer()
    
    if player.HPP <= 75 and player.TP <= 1000 then
        return true
    end
    
    return false
    
end

-- --Checks for Uggy Pendant latent.
-- function UggyPendant(spell)
--     local player = gData.GetPlayer()
    
--     if spell.MppAftercast <= 50 then
--         return true
--     end
    
--     return false
    
-- end

-- function DiablosGear()
--     local environment = gData.GetEnvironment();

--     if (environment.WeatherElement == 'Dark') then --DiabEar if Dark
--         gFunc.Equip('Ear2', 'Diabolos\'s Earring');
--     end
--     if (player.MPP <86 and environment.DayElement == 'Dark') then
--         print('Current HP % : ' .. player.MPP ..'%..  Equipping Diabolos Ring');
--         gFunc.EquipSet(sets.DarkMagic);
--         gFunc.Equip('Ring2', 'Diabolos\'s Ring');
--     end
--     if (environment.WeatherElement == 'Dark') then
--         print('Equipping Diabolos Pole');
--         gFunc.EquipSet(sets.DarkMagic);
--         gFunc.Equip('Main', 'Diabolos\'s Pole');
--     end
-- )

function DiablosEarring()
    local environment = gData.GetEnvironment()
    if (environment.WeatherElement == 'Dark') then --DiabEar if Dark
        gFunc.Equip('Ear2', 'Diabolos\'s Earring');
    end
end


function DiablosRing()
    local environment = gData.GetEnvironment()
    local mp_percent = 60 -- Calculate & Change this value for more customisation
    if (player.MPP < mp_percent and environment.DayElement == 'Dark') then --Diab if DarkDay & Less than certain MP
        gFunc.Equip('Ear2', 'Diabolos\'s Earring');
    end
end

--Checks for Obi Applicability. Accounts for negative weathwer/day associations. Obi must hit 10% to pass requirement to equip. 
function ObiCheck(spell)
    local element = spell.Element
    local zone = gData.GetEnvironment()
    
    local badEle = {
        ['Fire'] = 'Water',
        ['Earth'] = 'Wind',
        ['Water'] = 'Thunder',
        ['Wind'] = 'Ice',
        ['Ice'] = 'Fire',
        ['Thunder'] = 'Earth',
        ['Light'] = 'Dark',
        ['Dark'] = 'Light'
    };
    
    local weight = 0
    
    --Day comparison
    if string.find(zone.Day, spell.Element) then
        weight = weight + 1
    elseif string.find(zone.Day, badEle[spell.Element]) then
        weight = weight - 1
    end
    
    --Weather comparison
    if string.find(zone.Weather, spell.Element) then
        if string.find(zone.Weather, 'x2') then
            weight = weight + 2
        else
            weight = weight + 1
        end
    elseif string.find(zone.Weather, badEle[spell.Element]) then
        if string.find(zone.Weather, 'x2') then
            weight = weight - 2
        else
            weight = weight - 1
        end
    end    
    
    return weight

end

-- function example( -- put inside handles
--         --UggyPendant Check
--     if UggyPendant(spell) then
--         gFunc.EquipSet(UggyPendant)
--     end
--     --SorcRing Check
--     if RingActive() then
--         gFunc.EquipSet(SorcRing)
--     end
--     --ObiApplication Check
--     if ObiCheck(spell) >= 1 then
--         gFunc.Equip('waist', obis[spell.Element])
--     end
-- )

profile.HandleDefault = function()
    -- local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
    -- if (myLevel ~= Settings.CurrentLevel) then
    --     gFunc.EvaluateLevels(profile.Sets, myLevel);
    --     Settings.CurrentLevel = myLevel;
    -- end

    local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Idle);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    -- gFunc.SetMidDelay(1.0);
end

profile.HandleMidcast = function()
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();
    local MndDebuffs = T{ 'Slow', 'Paralyze', 'Silence', 'Slow II', 'Paralyze II', 'Addle', 'Addle II' };
    local ElementalDots = T{ 'Burn', 'Rasp', 'Drown', 'Choke', 'Frost', 'Shock' };
    local DrainAspir = T{ 'Drain', 'Aspir' };
    local ElementalStaffTable = {
        ['Fire'] = 'Fire Staff',
        ['Earth'] = 'Terra\'s Staff',
        ['Water'] = 'Water Staff',
        ['Wind'] = 'Wind Staff',
        ['Ice'] = 'Ice Staff',
        ['Thunder'] = 'Jupiter\'s Staff',
        ['Light'] = 'Apollo\'s Staff',
        ['Dark'] = 'Pluto\'s Staff'
    };
    -- ====== Use ingame to See cast delay of spells =====
    -- local spell = gData.GetAction();
    -- local fastCastValue = 0.30;
    -- local minimumBuffer = 0.1;
    -- local packetDelay = 0.4;
    -- local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
    -- print(castDelay); -- 1 will work for most nukes
    -- ====== Use ingame to See cast delay of spells =====

    local castDelay = 0.5;

    local action = gData.GetAction();				
    if (action.Skill == 'Enfeebling Magic') then
        -- +++++ ENFEEBLE +++++ SECTION +++++ START +++++       ++++++++++++++++++++++++++++++ ENFEEBLE +++++++++++++++++++++++++ --
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.enfeeble_mnd);
        else
            gFunc.EquipSet(sets.enfeeble_int);
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
        if (environment.WeatherElement == 'Dark') then --DiabEar if Dark
            gFunc.Equip('Ear2', 'Diabolos\'s Earring');
        end
        -- +++++ ENFEEBLE +++++ SECTION +++++ END +++++         +++++++++++++++++++++++++++++ ENFEEBLE +++++++++++++++++++++++++ --
    elseif (action.Skill == 'Elemental Magic') then
        -- +++++ ELEMENTAL +++++ SECTION +++++ START +++++      +++++++++++++++++++++++++++ EELEMENTAL +++++++++++++++++++++++++ --
        if (ElementalDots:contains(action.Name)) then
            gFunc.EquipSet(sets.ElementalDots);
        elseif (action.Name == 'Impact') then
            gFunc.EquipSet(sets.Impact);
        else
            if (Settings.UseSorcy == true) then -- IF SORCY ON
                print('Lowering HP');
                gFunc.SetMidDelay(castDelay);
                gFunc.InterimEquipSet(sets.negativeHP);
                gFunc.EquipSet(sets.nuke_sorcy);
            else
                gFunc.EquipSet(sets.nuke_general); -- Default Nuke
            end
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
        -- +++++ +++++ Sorcy Ring Section +++++ +++++; 
        -- This stays true regardless of toggling or not (a "might as well situation")
        if (player.HPP <76) then
            print('Current HP % : ' .. player.HPP .. '%.. Equipping Sorcy Ring');
            gFunc.Equip('Ring2', 'Sorcerer\'s Ring');
        elseif (player.HPP >75) then
            --print('Player HP : ' .. player.HPP .. '% (higher)');    
        end
        -- +++++ +++++ Sorcy Ring Section +++++ +++++;
        -- +++++ ELEMENTAL +++++ SECTION +++++ END +++++        +++++++++++++++++++++++++++ EELEMENTAL +++++++++++++++++++++++++ --
    elseif (action.Skill == 'Dark Magic') then
        -- +++++ DARK +++++ DARK +++++ DARK +++++ --            +++++++++++++++++++++++++++ DARK +++++++++++++++++++++++++ --
        if (action.Name == 'Stun') then
            gFunc.EquipSet(sets.stun);
        elseif (DrainAspir:contains(action.Name)) then
            gFunc.EquipSet(sets.DrainAspir);
            print('Current Day : ' .. environment.DayElement .. ' |  Current Weather : ' .. environment.Weather);
            if (player.MPP <86 and environment.DayElement == 'Dark') then
                print('Current HP % : ' .. player.MPP ..'%..  Equipping Diabolos Ring');
                gFunc.EquipSet(sets.DarkMagic);
                gFunc.Equip('Ring2', 'Diabolos\'s Ring');
            end
            if (environment.WeatherElement == 'Dark') then
                print('Equipping Diabolos Pole');
                gFunc.EquipSet(sets.DarkMagic);
                gFunc.Equip('Main', 'Diabolos\'s Pole');
            end
        else
            gFunc.EquipSet(sets.DarkMagic);
        end
        if (environment.WeatherElement == 'Dark') then --DiabEar if Dark
            gFunc.Equip('Ear2', 'Diabolos\'s Earring');
        end
        -- +++++ DARK +++++ SECTION +++++ END +++++ --          +++++++++++++++++++++++++++ DARK +++++++++++++++++++++++++ --
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then  
        gFunc.EquipSet(sets.Cure);
    elseif (action.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
        if (action.Name == 'Sneak') then
            gFunc.Equip('Feet', 'Dream Boots +1');
        elseif (action.Name == 'Invisible') then
            gFunc.Equip('Hands', 'Dream Mittens +1');
        elseif (action.Name == 'Stoneskin') then
            gFunc.EquipSet(sets.stoneskin);
        end
    else
        gFunc.EquipSet(sets.Haste);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;