local profile = {};

local sets = {
    Fastcast_Priority = {
        Ear1 = {'Loquacious Earring'},
        Feet = {'Rostrum Pumps'},
        Back = {'Warlock\'s Mantle'},
    },
    Haste_Priority = {
        Body = {'Nashira Manteel'},
        Feet = {'Rostrum Pumps'},
        Back = {'Warlock\'s Mantle'},
    },
    Fishing = {
        Body = {'Fsh. Tunica'},
        Hands = {'Fsh. Gloves'},
        Ring2 = {'Albatross Ring'},
        Legs = {'Fisherman \'s Hose'},
        Feet = {'Waders'},
    },
    Digging = {
        Body = {'Choc. Jack Coat'},
        Hands = {'Chocobo Gloves'},
        Legs = {'Chocobo Hose'},
        Feet = {'Rider\'s Boots'},
    },
    Idle_Priority = {
        Main = {'Terra\'s Staff'},
        Head = {'Wizard\'s Petasos'},
        Neck = {'Black Neckerchief', 'Checkered Scarf'},
        Ear1 = {'Moldavite Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Sorcerer\'s Coat', 'Black Cloak', 'Vermillion Cloak'},
        Hands = {'Sorcerer\'s Gloves', 'Wizard\'s Gloves'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Astral Ring'},
        Back = {'Rainbow Cape'},
        Waist = {'Hierarch Belt', 'Penitent\'s Rope'},
        Legs = {'Mahatma Slops'},
        Feet = {'Sorcerer\'s Sabots', 'Wizard\'s Sabots'},
    },
    Resting_Priority = {
        Main = {'Pluto\'s Staff', 'Pilgrim\'s Wand'},
        Head = {'Wizard\'s Petasos', 'Seer\'s Crown +1'},
        Neck = {'Checkered Scarf'},
        Body = { 'Errant Hpl.', 'Seer\'s Tunic +1'},
        Hands = {'Sorcerer\'s Gloves', 'Wizard\'s Gloves'},
        Ring1 = {'Tamas Ring'},
        Back = {'Rainbow Cape', 'Blue Cape'},
        Waist = {'Hierarch Belt', 'Penitent\'s Rope', 'Friar\'s Rope'},
        Legs = {'Baron\'s Slops'},
        Feet = {'Sorcerer\'s Sabots'},
    },
    DarkMagic_Priority = {
        Main = {'Pluto\'s Staff'},
        Head = {'Wizard\'s Petasos'},
        Neck = {'Philomath Stole'},
        Ear1 = {'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Errant Hpl.'},
        Hands = {'Sorcerer\'s Gloves', 'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Genius Ring', 'Eremite\'s Ring'},
        Back = {'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope'},
        Legs = {'Wizard\'s Tonban'},
        Feet = {'Sorcerer\'s Sabots'},
    },
    DrainAspir_Priority = { -- Focus Dark Magic Skill then MagAcc then Int
        Main = {'Pluto\'s Staff'},
        Head = {'Wizard\'s Petasos'},
        Neck = {'Philomath Stole'},
        Ear1 = {'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Errant Hpl.'},
        Hands = {'Sorcerer\'s Gloves', 'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Genius Ring', 'Eremite\'s Ring'},
        Back = {'Black Cape +1'},
        Waist = {'Penitent\'s Rope'},
        Legs = {'Wizard\'s Tonban'},
        Feet = {'Sorcerer\'s Sabots'},
    },
    Stun_Priority = {
        Main = {'Jupiter\'s Staff'},
        Head = {'Wizard\'s Petasos'},
        Neck = {'Philomath Stole'},
        Ear1 = {'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Errant Hpl.'},
        Hands = {'Sorcerer\'s Gloves', 'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Genius Ring', 'Eremite\'s Ring'},
        Back = {'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope'},
        Legs = {'Wizard\'s Tonban'},
        Feet = {'Sorcerer\'s Sabots'},
    },
    SorcyNuke_Priority = {
        Main = {'Rose Wand +1', 'Solid Wand', 'Yew Wand +1', 'Pilgrim\'s Wand'},
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Demon Helm', 'Wizard\'s Petasos', 'Seer\'s Crown'},
        Neck = {'Philomath Stole'},
        Ear1 = {'Moldavite Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Igqira Weskit', 'Justaucorps +1'},
        Hands = {'Wizard\'s Gloves'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Sorcerer\'s Ring'},
        Back = {'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope'},
        Legs = {'Mahatma Slops'},
        Feet = {'Sorcerer\'s Sabots', 'Wizard\'s Sabots'},
    },
    Nuke_Priority = {
        Main = {'Rose Wand +1', 'Solid Wand', 'Yew Wand +1', 'Pilgrim\'s Wand'},
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Demon Helm', 'Wizard\'s Petasos', 'Seer\'s Crown'},
        Neck = {'Philomath Stole'},
        Ear1 = {'Moldavite Earring', 'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Igqira Weskit', 'Justaucorps +1', 'Ryl.Sqr. Robe'},
        Hands = {'Wizard\'s Gloves', 'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Genius Ring', 'Eremite\'s Ring'},
        Back = {'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope', 'Mrc.Cpt. Belt', 'Friar\'s Rope'},
        Legs = {'Mahatma Slops', 'Seer\'s Slacks +1'},
        Feet = {'Sorcerer\'s Sabots', 'Wizard\'s Sabots'},
    },
    ElementalDots_Priority = { -- MAX INT
        Main = {'Rose Wand +1', 'Solid Wand', 'Yew Wand +1', 'Pilgrim\'s Wand'},
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Demon Helm', 'Wizard\'s Petasos', 'Seer\'s Crown'},
        Neck = {'Philomath Stole', 'Checkered Scarf'},
        Ear2 = {'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Errant Hpl.', 'Justaucorps +1'},
        Hands = {'Errant Cuffs', 'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Genius Ring', 'Eremite\'s Ring'},
        Back = {'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope', 'Mrc.Cpt. Belt', 'Friar\'s Rope'},
        Legs = {'Mahatma Slops', 'Seer\'s Slacks +1'},
        Feet = {'Sorcerer\'s Sabots', 'Wizard\'s Sabots'},
    },
    Intfeebles_Priority = {
        Main = {'Rose Wand +1', 'Solid Wand', 'Yew Wand +1', 'Pilgrim\'s Wand'},
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Igqira Tiara', 'Wizard\'s Petasos', 'Seer\'s Crown'},
        Neck = {'Enfeebling Torque'},
        Ear1 = {'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Wizard\'s Coat'},
        Hands = {'Errant Cuffs', 'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Genius Ring', 'Eremite\'s Ring'},
        Back = {'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope', 'Mrc.Cpt. Belt', 'Friar\'s Rope'},
        Legs = {'Mahatma Slops'},
        Feet = {'Sorcerer\'s Sabots', 'Wizard\'s Sabots'},
    },
    Mndfeebles_Priority = {
        Main = {'Rose Wand +1', 'Solid Wand', 'Yew Wand +1', 'Pilgrim\'s Wand'},
        Head = {'Igqira Tiara'},
        Neck = {'Enfeebling Torque'},
        Ear1 = {'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Wizard\'s Coat'},
        Hands = {'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Saintly Ring'},
        Back = {'Rainbow Cape', 'White Cape +1'},
        Waist = {'Penitent\'s Rope', 'Mrc.Cpt. Belt', 'Friar\'s Rope'},
        Legs = {'Mahatma Slops'},
        Feet = {'Errant Pigaches', 'Seer\'s Pumps'},
    },
    Cure_Priority = {
        Main = {'Apollo\'s Staff'},
        Head = {'Traveler\'s Hat', 'Wizard\'s Petasos'},
        Neck = {'Justice Badge'},
        Ear1 = {'Cunning Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Errant Hpl.'},
        Hands = {'Seer\'s Mitts +1'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Saintly Ring'},
        Back = {'Rainbow Cape'},
        Waist = {'Penitent\'s Rope', 'Mrc.Cpt. Belt', 'Friar\'s Rope'},
        Legs = {'Mahatma Slops'},
        Feet = {'Errant Pigaches', 'Seer\'s Pumps'},
    },
    EnmityMP_Priority = { -- Other Priorities: Refresh, ConserveMP 
        Main = {'Terra\'s Staff'},
        Head = {'Wizard\'s Petasos'},
        Neck = {'Black Neckerchief', 'Checkered Scarf'},
        Ear1 = {'Moldavite Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Sorcerer\'s Coat', 'Black Cloak', 'Vermillion Cloak'},
        Hands = {'Sorcerer\'s Gloves', 'Wizard\'s Gloves'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Astral Ring'},
        Back = {'Rainbow Cape'},
        Waist = {'Penitent\'s Rope'},
        Legs = {'Mahatma Slops'},
        Feet = {'Sorcerer\'s Sabots', 'Wizard\'s Sabots'},
    },
    Enhancing_Priority = {
        Main = {'Terra\'s Staff'},
        Head = {'Wizard\'s Petasos'},
        Neck = {'Black Neckerchief', 'Checkered Scarf'},
        Ear1 = {'Moldavite Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Sorcerer\'s Coat', 'Black Cloak', 'Vermillion Cloak'},
        Hands = {'Sorcerer\'s Gloves', 'Wizard\'s Gloves'},
        Ring1 = {'Tamas Ring'},
        Ring2 = {'Astral Ring'},
        Back = {'Rainbow Cape'},
        Waist = {'Penitent\'s Rope'},
        Legs = {'Mahatma Slops'},
        Feet = {'Sorcerer\'s Sabots', 'Wizard\'s Sabots'},
    },
    NegativeHP_Priority = {
        Main = {'Asklepios'},
        Ammo = {'Tiphia Sting'},
        Head = {'Gold Hairpin'},
        Neck = {'Star Necklace'},
        Ear1 = {'Moldavite Earring'},
        Ear2 = {'Cunning Earring'},
        Body = {'Black Cotehardie'},
        Hands = {'Errant Cuffs'},
        Ring1 = {'Astral Ring'},
        Ring2 = {'Astral Ring'},
        Back = {'Blue Cape'},
        Waist = {'Penitent\'s Rope'},
        Legs = {'Wizard\'s Tonban'},
        Feet = {'Errant Pigaches'},
    },
    PositiveHP_Priority = {
        Feet = {'Wonder Clomps'},
    },
};

profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    UseRefreshIdle = true;
    UseSorcy = false;
    CurrentLevel = 0,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    print('Loaded Blackmage Sync Set');
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
function UggyPendant(spell)
    local player = gData.GetPlayer()
    if spell.MppAftercast <= 50 then
        return true
    end
    return false
    
end

-- --Checks for Uggy Pendant latent.
function DiablosRing(spell)
    local player = gData.GetPlayer()
    local environment = gData.GetEnvironment()
    if spell.MppAftercast <= 50 then
        return true
    end
    return false
    
end

function DiablosEarring()
    local environment = gData.GetEnvironment()
    if (environment.WeatherElement == 'Dark') then --DiabEar if Dark
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
--     if SorcyRing() then
--         gFunc.EquipSet(SorcRing)
--     end
--     --ObiApplication Check
--     if ObiCheck(spell) >= 1 then
--         gFunc.Equip('waist', obis[spell.Element])
--     end
-- )

profile.HandleDefault = function()
    local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
    if (myLevel ~= Settings.CurrentLevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        Settings.CurrentLevel = myLevel;
    end

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
    local ObiTable = {
        ['Fire'] = 'Karin Obi',
        ['Earth'] = 'Dorin Obi',
        ['Water'] = 'Suirin Obi',
        ['Wind'] = 'Furin Obi',
        ['Ice'] = 'Hyorin Obi',
        ['Thunder'] = 'Rairin Obi',
        ['Light'] = 'Korin Obi',
        ['Dark'] = 'Anrin Obi'
    };
    local DayElementTable = {
        ['Firesday'] = 'Fire',
        ['Earthsday'] = 'Earth',
        ['Watersday'] = 'Water',
        ['Windsday'] = 'Wind',
        ['Iceday'] = 'Ice',
        ['Lightningday'] = 'Thunder',
        ['Lightsday'] = 'Light',
        ['Darksday'] = 'Dark'
    };
    -- ====== Use ingame to See cast delay of spells =====
    -- local spell = gData.GetAction();
    -- local fastCastValue = 0.30;
    -- local minimumBuffer = 0.1;
    -- local packetDelay = 0.4;
    -- local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
    -- print(castDelay); -- 1 will work for most Nukes
    -- ====== Use ingame to See cast delay of spells =====

    local castDelay = 0.5;

    local action = gData.GetAction();				
    if (action.Skill == 'Enfeebling Magic') then
        -- +++++ ENFEEBLE +++++ SECTION +++++ START +++++       ++++++++++++++++++++++++++++++ ENFEEBLE +++++++++++++++++++++++++ --
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.Mndfeebles);
        else
            gFunc.EquipSet(sets.Intfeebles);
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
                -- print('Lowering HP');
                gFunc.SetMidDelay(castDelay);
                gFunc.InterimEquipSet(sets.NegativeHP);
                gFunc.EquipSet(sets.SorcyNuke);
                if (Settings.CurrentLevel < 72) then -- IncreaseHP 
                    gFunc.EquipSet(sets.PositiveHP);
                end
            else
                gFunc.EquipSet(sets.Nuke); -- Default Nuke
            end
            if ObiCheck(action) >= 1 then -- 
                gFunc.Equip('waist', ObiTable[action.Element]);
            end
            if UggyPendant(action) then -- 
                gFunc.Equip('neck', 'Ug');
            end
            if (DayElementTable[environment.Day] == action.Element) then
                gFunc.Equip('legs', 'Sorcerer\'s Tonban');
            end
        end
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
        -- This stays true regardless of toggling or not (a "might as well situation")
        if SorcyRing() then
            -- print('Current HP % : ' .. player.HPP .. '%.. Equipping Sorcy Ring');
            gFunc.Equip('Ring2', 'Sorcerer\'s Ring');  
        end
        -- +++++ ELEMENTAL +++++ SECTION +++++ END +++++        +++++++++++++++++++++++++++ EELEMENTAL +++++++++++++++++++++++++ --
    elseif (action.Skill == 'Dark Magic') then
        -- +++++ DARK +++++ DARK +++++ DARK +++++ --            +++++++++++++++++++++++++++ DARK +++++++++++++++++++++++++ --
        if (action.Name == 'Stun') then
            gFunc.EquipSet(sets.Stun);
        elseif (DrainAspir:contains(action.Name)) then
            gFunc.EquipSet(sets.DrainAspir);
            if (environment.WeatherElement == 'Dark') then
                gFunc.Equip('Main', 'Diabolos\'s Pole');
            end
            if (action.Name == 'Aspir') then -- Aspir MP 55% for Diabolos Ring
                print('Doing Aspir')
                if (player.MPP <55 and environment.DayElement == 'Dark') then
                    -- print('Current MP % : ' .. player.MPP ..'%..  Equipping Diabolos Ring');
                    gFunc.Equip('Ring2', 'Diabolos\'s Ring');
                end
            elseif (action.Name == 'Drain') then -- Drain MP 85% for Diabolos Ring
                if (player.MPP <85 and environment.DayElement == 'Dark') then
                        -- print('Current MP % : ' .. player.MPP ..'%..  Equipping Diabolos Ring');
                        gFunc.Equip('Ring2', 'Diabolos\'s Ring');
                end
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
            gFunc.EquipSet(sets.Stoneskin);
        end
    
    elseif (action.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.EnmityMP);
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