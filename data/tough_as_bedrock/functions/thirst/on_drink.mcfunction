# runs when player uses a consumable (check for thirst level of item)

#reset temp data
scoreboard players reset @s dan_tab.temp

##determine thirst level
#Custom
execute store result score @s dan_tab.temp run data get entity @s Inventory[{Slot:-106b}].tag.thirst_value
execute if score @s dan_tab.temp matches 1.. store result score $Dirty dan_tab.temp run data get entity @s Inventory[{Slot:-106b}].tag.thirst_dirty
execute store result score @s dan_tab.temp run data get entity @s SelectedItem.tag.thirst_value
execute if score @s dan_tab.temp matches 1.. store result score $Dirty dan_tab.temp run data get entity @s SelectedItem.tag.thirst_dirty
#Vanilla
execute unless score @s dan_tab.temp matches 1.. run function tough_as_bedrock:thirst/determine_thirst_points

#give thirst points
scoreboard players operation @s dan_tab.thirst += @s dan_tab.temp

#reset temp data
scoreboard players reset @s dan_tab.temp

##determine thirst saturation level
#Custom
execute store result score @s dan_tab.temp run data get entity @s Inventory[{Slot:-106b}].tag.thirst_saturation_value
execute store result score @s dan_tab.temp run data get entity @s SelectedItem.tag.thirst_saturation_value
#Vanilla
execute unless score @s dan_tab.temp matches 1.. run function tough_as_bedrock:thirst/determine_thirst_saturation_points

#give thirst saturation points
scoreboard players operation @s dan_tab.thirstS += @s dan_tab.temp

#thirst effect chance
scoreboard players set $RNG rand.min 1
scoreboard players set $RNG rand.max 4
function tough_as_bedrock:math/random

#thirst effect
execute if score $Dirty dan_tab.temp matches 1 unless score $RNG rand.num matches 1 run tag @s add dan_tab.thirsty_effect
execute if score $Dirty dan_tab.temp matches 1 unless score $RNG rand.num matches 1 run scoreboard players reset @s dan_tab.thirstyT

#reset temp data
scoreboard players reset @s dan_tab.temp
scoreboard players reset $Dirty dan_tab.temp