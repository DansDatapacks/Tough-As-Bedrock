# vignette display

#hot
execute at @e[tag=dan.air_detector] if score @s dan_tab.plyrTemp matches 100.. run data merge block ~ ~-1 ~ {Text1:'[{"nbt":"Text2","block":"~ ~ ~","interpret":"true"},{"text":"\\uE026"}]'}
execute if score @s dan_tab.plyrTemp matches 100.. run tag @s add dan_tab.showVignette

#cold
execute at @e[tag=dan.air_detector] if score @s dan_tab.plyrTemp matches ..-50 run data merge block ~ ~-1 ~ {Text1:'[{"nbt":"Text2","block":"~ ~ ~","interpret":"true"},{"text":"\\uE027"}]'}
execute if score @s dan_tab.plyrTemp matches ..-50 run tag @s add dan_tab.showVignette