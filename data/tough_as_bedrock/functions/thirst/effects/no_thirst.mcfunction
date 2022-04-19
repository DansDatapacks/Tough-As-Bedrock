# handles thirst effects

#no thirst, damage
execute as @s[scores={dan_tab.health=3..},tag=!dan_tab.gamemodeAdmin] run scoreboard players set @s math.temp 2
execute as @s[scores={dan_tab.health=3..},tag=!dan_tab.gamemodeAdmin] run function tough_as_bedrock:math/damage/apply

#no thirst, instant death (hard mode)
execute if score #difficulty dan_tab.data matches 3 as @s[scores={dan_tab.health=..3},tag=!dan_tab.gamemodeAdmin,tag=!dan_tab.dead] run function tough_as_bedrock:thirst/effects/thirst_death