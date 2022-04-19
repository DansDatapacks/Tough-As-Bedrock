# runs as players that get HUD changes

#air block detection
summon minecraft:area_effect_cloud ~ 255 ~ {Tags:["dan.air_detector","global.ignore"]}
execute as @e[tag=dan.air_detector] at @s run function tough_as_bedrock:utility/find_air

#set sign and actionbar position
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ minecraft:acacia_sign

#temperature vingette
function tough_as_bedrock:hud/temperature/vignette_display
execute if entity @s[tag=dan_tab.showVignette] at @e[tag=dan.air_detector] run data merge block ~ ~-1 ~ {Text2:'[{"translate":"space.-400"},{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"translate":"space.-601"}]'}

#stamina HUD
execute unless score #tab.disable_stamina dan_tab.data matches 1 if score @s dan_tab.stamina < @s dan_tab.staminaM at @s run function tough_as_bedrock:hud/stamina/stamina_display
execute unless score #tab.disable_stamina dan_tab.data matches 1 if score @s dan_tab.stamina < @s dan_tab.staminaM at @e[tag=dan.air_detector] run data merge block ~ ~-1 ~ {Text2:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"},{"translate":"space.-80"}]'}

#thirst HUD
execute unless score #tab.disable_thirst dan_tab.data matches 1 run function tough_as_bedrock:hud/thirst/thirst_display
execute unless score #tab.disable_thirst dan_tab.data matches 1 at @e[tag=dan.air_detector] run data merge block ~ ~-1 ~ {Text2:'[{"nbt":"Text1","block":"~ ~ ~","interpret":"true"}]'}

#display HUD
title @s times 0 100000 0
execute at @e[tag=dan.air_detector] positioned ~ ~-1 ~ run title @s actionbar [{"translate":"space.100"},{"nbt":"Text1","block":"~ ~ ~","interpret":true}]
title @s times 0 100 0

#end air detection/kill sign
execute at @e[tag=dan.air_detector] run setblock ~ ~-1 ~ minecraft:air
kill @e[tag=dan.air_detector]
tag @s remove dan_tab.showVignette