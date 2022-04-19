# runs when player changes their inventory

#reset tags
tag @s remove dan_tab.holdingThermometer

#holding glass bottle
execute if predicate tough_as_bedrock:holding/glass_bottle run function tough_as_bedrock:on_event/on_bottle_fill
execute if predicate tough_as_bedrock:holding/potion run function tough_as_bedrock:on_event/on_bottle_fill

#check if holding thermometer
execute if predicate tough_as_bedrock:holding/thermometer run tag @s add dan_tab.holdingThermometer

#reset
advancement revoke @s only tough_as_bedrock:on_inventory_change