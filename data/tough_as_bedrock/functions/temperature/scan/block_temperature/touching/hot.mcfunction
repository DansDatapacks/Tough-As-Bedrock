# hot block

#reset blacklist variable
scoreboard players reset #blacklist dan_tab.temp

#check blacklist
execute if block ~ ~ ~ minecraft:campfire[lit=false] run scoreboard players set #blacklist dan_tab.temp 1

#if block isnt blacklisted, add to climate score
execute unless score #blacklist dan_tab.temp matches 1.. run scoreboard players add @s dan_tab.climate 90

#tag for temperature scaling
tag @s add dan_tab.touchingTemperatureBlock