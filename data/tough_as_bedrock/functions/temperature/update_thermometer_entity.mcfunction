# update thermometer entity

#validate
tag @s remove dan_tab.thermometerEntity
execute if data entity @s {Item:{id:"minecraft:clock",tag:{thermometer:1b}}} run tag @s add dan_tab.thermometerEntity

#calculate climate around entity
execute as @s[tag=dan_tab.thermometerEntity] at @s run function tough_as_bedrock:temperature/calculate_climate

#change temp
execute if entity @s[tag=dan_tab.thermometerEntity] if score @s dan_tab.climate matches ..-50 run data merge entity @s {Item:{tag:{CustomModelData:4150006}}}
execute if entity @s[tag=dan_tab.thermometerEntity] if score @s dan_tab.climate matches -50..0 run data merge entity @s {Item:{tag:{CustomModelData:4150005}}} 
execute if entity @s[tag=dan_tab.thermometerEntity] if score @s dan_tab.climate matches 0..40 run data merge entity @s {Item:{tag:{CustomModelData:4150004}}}
execute if entity @s[tag=dan_tab.thermometerEntity] if score @s dan_tab.climate matches 40..68 run data merge entity @s {Item:{tag:{CustomModelData:4150003}}}
execute if entity @s[tag=dan_tab.thermometerEntity] if score @s dan_tab.climate matches 68..85 run data merge entity @s {Item:{tag:{CustomModelData:4150002}}}
execute if entity @s[tag=dan_tab.thermometerEntity] if score @s dan_tab.climate matches 85..100 run data merge entity @s {Item:{tag:{CustomModelData:4150001}}}
execute if entity @s[tag=dan_tab.thermometerEntity] if score @s dan_tab.climate matches 100.. run data merge entity @s {Item:{tag:{CustomModelData:4150000}}}
