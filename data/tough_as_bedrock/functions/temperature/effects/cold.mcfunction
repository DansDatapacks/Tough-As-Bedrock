# too cold

#effects
effect give @s minecraft:mining_fatigue 2 1 true
effect give @s minecraft:slowness 2 2 true

#damage
execute if score #difficulty dan_tab.data matches 1.. as @s[scores={dan_tab.health=3..},tag=!dan_tab.gamemodeAdmin] run scoreboard players set @s math.temp 2
execute if score #difficulty dan_tab.data matches 1.. as @s[scores={dan_tab.health=3..},tag=!dan_tab.gamemodeAdmin] run function tough_as_bedrock:math/damage/apply

#instant death (hard mode)
execute if score #difficulty dan_tab.data matches 3 as @s[scores={dan_tab.health=..3},tag=!dan_tab.gamemodeAdmin,tag=!dan_tab.dead] run function tough_as_bedrock:temperature/effects/cold_death