# calculate entity's climate

#tag
tag @s add dan_tab.tempCalculating

#biome (for non-players, players get it from advancements)
execute if entity @s[type=!minecraft:player] run function tough_as_bedrock:temperature/scan/scan_biome

#altitude
execute at @s run function tough_as_bedrock:temperature/scan/check_altitude

#blocks touching entity (increased temp)
execute at @s run function tough_as_bedrock:temperature/scan/check_touching_block

#blocks around entity
execute at @s run function tough_as_bedrock:temperature/scan/init_scan

#entities around entity
execute at @s run function tough_as_bedrock:temperature/scan/scan_entities

#held items (players only)
execute if entity @s[type=minecraft:player] run function tough_as_bedrock:temperature/scan/check_held_item

#using stamina (players only)
execute if entity @s[type=minecraft:player] unless score @s dan_tab.staminaP matches 100 run scoreboard players add @s dan_tab.climate 25

#remove tag
tag @s remove dan_tab.tempCalculating