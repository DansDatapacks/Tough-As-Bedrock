# starts raycast

#reset past raycast
kill @e[type=minecraft:area_effect_cloud,tag=dan_tab.raycastLocation]

#init raycast tag
tag @s add dan_tab.raycasting

#set defaults
scoreboard players set #hit dan_tab.temp 0
execute unless score #distance dan_tab.temp matches 0.. run scoreboard players set #distance dan_tab.temp 7

#run raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function tough_as_bedrock:raycast/run_raycast

#reset tag
tag @s remove dan_tab.raycasting

#reset scores
scoreboard players reset #hit dan_tab.temp
scoreboard players reset #distance dan_tab.temp
scoreboard players reset #distanceTraveled dan_tab.temp