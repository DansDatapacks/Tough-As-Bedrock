# freezing block

#reset blacklist variable
scoreboard players reset #blacklist dan_tab.temp

#check blacklist

#if block isnt blacklisted, add to climate score
execute unless score #blacklist dan_tab.temp matches 1.. run scoreboard players remove @s dan_tab.climate 10