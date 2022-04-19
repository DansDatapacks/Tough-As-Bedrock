# runs on new players

#init thirst scores
scoreboard players set @s dan_tab.thirst 20
scoreboard players set @s dan_tab.thirstS 50

##init stamina scores
scoreboard players operation @s dan_tab.staminaM = #staminaMax dan_tab.data
scoreboard players operation @s dan_tab.stamina = @s dan_tab.staminaM
scoreboard players operation @s dan_tab.s_regenM = #staminaRegenMax dan_tab.data

#init temperature scores
function tough_as_bedrock:temperature/calculate_climate
scoreboard players operation @s dan_tab.plyrTemp = @s dan_tab.climate

#tag player
tag @s add dan_tab.initPlayer