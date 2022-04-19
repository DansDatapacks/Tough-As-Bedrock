# on water bottle fill

#get amount of water bottles in inv
execute store result score @s dan_tab.temp run clear @s potion{Potion:"minecraft:water"} 0

#begin raycast
execute at @s run function tough_as_bedrock:raycast/start_raycast

#check for biome if they got a new water bottle
execute unless score @s dan_tab.wtrbtls >= @s dan_tab.temp run tag @s add dan_tab.check_river_water
execute unless score @s dan_tab.wtrbtls >= @s dan_tab.temp run schedule function tough_as_bedrock:thirst/give/pure_water_bottle 1t

#set
scoreboard players operation @s dan_tab.wtrbtls = @s dan_tab.temp

#tellraw @a {"score":{"name":"@s","objective":"dan_tab.temp"}}

#reset temp data
scoreboard players reset @s dan_tab.temp