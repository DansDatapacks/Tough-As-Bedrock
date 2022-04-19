# stamina percent calculator

##calc stamina percent
#get current Stamina score
scoreboard players operation @s dan_tab.staminaP = @s dan_tab.stamina
#multiply current Stamina by 100
scoreboard players operation @s dan_tab.staminaP *= #100 dan_tab.data
#sets pStamina to (your current Stamina*100) / (your current Max Stamina) - gets % of max stamina
scoreboard players operation @s dan_tab.staminaP /= @s dan_tab.staminaM

##calc stamina regen
#calc regenMax
scoreboard players operation @s dan_tab.temp = @s dan_tab.staminaM
scoreboard players operation @s dan_tab.temp *= #staminaRegenMax dan_tab.data
scoreboard players operation @s dan_tab.temp /= #100 dan_tab.data
scoreboard players operation @s dan_tab.s_regenM = @s dan_tab.temp
#set regen = to regenMax
execute unless score @s dan_tab.s_regen = @s dan_tab.s_regenM run scoreboard players operation @s dan_tab.s_regen = @s dan_tab.s_regenM
#calc slower regen
execute as @s[tag=dan_tab.stamina_slowRecover] run scoreboard players operation @s dan_tab.s_regen /= #2 dan_tab.data
#default
execute unless score @s dan_tab.s_regen matches 2.. run scoreboard players set @s dan_tab.s_regen 2