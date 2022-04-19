# called on a player when they respawn

#tag
tag @s remove dan_tab.dead

#init temperature scores
#function tough_as_bedrock:temperature/calculate_climate
scoreboard players set @s dan_tab.plyrTemp 0

#reset
scoreboard players reset @s dan_tab.respawn