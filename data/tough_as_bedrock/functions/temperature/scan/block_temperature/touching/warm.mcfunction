# warm block

#reset blacklist variable
scoreboard players reset #blacklist dan_tab.temp

#check blacklist
execute if block ~ ~ ~ furnace[lit=false] run scoreboard players set #blacklist dan_tab.temp 1
execute if block ~ ~ ~ blast_furnace[lit=false] run scoreboard players set #blacklist dan_tab.temp 1
execute if block ~ ~ ~ smoker[lit=false] run scoreboard players set #blacklist dan_tab.temp 1
execute if block ~ ~ ~ minecraft:redstone_wire[power=0] run scoreboard players set #blacklist dan_tab.temp 1
execute if block ~ ~ ~ minecraft:redstone_lamp[lit=false] run scoreboard players set #blacklist dan_tab.temp 1
execute if block ~ ~ ~ minecraft:redstone_ore[lit=false] run scoreboard players set #blacklist dan_tab.temp 1
execute if block ~ ~ ~ minecraft:redstone_torch[lit=false] run scoreboard players set #blacklist dan_tab.temp 1
execute if block ~ ~ ~ minecraft:redstone_wall_torch[lit=false] run scoreboard players set #blacklist dan_tab.temp 1

#if block isnt blacklisted, add to climate score
execute unless score #blacklist dan_tab.temp matches 1.. run scoreboard players add @s dan_tab.climate 15

#tag for temperature scaling
tag @s add dan_tab.touchingTemperatureBlock