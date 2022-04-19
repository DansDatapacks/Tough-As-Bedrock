# intializes item entities

#rescan nearby items
execute at @s run tag @e[distance=..5,tag=dan_tab.initItem] remove dan_tab.initItem

#cooked water bottle (at campfire)
execute if data entity @s {Item:{id:"minecraft:potion"}} at @s if block ~ ~ ~ #minecraft:campfires run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"translate":"Pure Water Bottle","italic":false}'},CustomPotionColor:900863,thirst_value:6,thirst_saturation_value:30}}}

#thermometer item
execute if data entity @s {Item:{id:"minecraft:clock",tag:{thermometer:1b}}} run tag @s add dan_tab.thermometerEntity

#glass
execute if data entity @s {Item:{id:"minecraft:glass"}} run tag @s add dan_tab.itemGlass

#redstone
execute if data entity @s {Item:{id:"minecraft:redstone"}} run tag @s add dan_tab.itemRedstone

#count of 4
execute if data entity @s {Item:{Count:4b}} run tag @s add dan_tab.itemCount4

#init tag
tag @s add dan_tab.initItem