# every tick (1/20 second)

#detect hotbar scroll
execute unless score #tab.disable_temperature dan_tab.data matches 1 as @a store result score @s dan_tab.temp run data get entity @s SelectedItemSlot
execute unless score #tab.disable_temperature dan_tab.data matches 1 as @a unless score @s dan_tab.temp = @s dan_tab.lastSlot run function tough_as_bedrock:on_event/on_hotbar_scroll
execute unless score #tab.disable_temperature dan_tab.data matches 1 as @a run scoreboard players operation @s dan_tab.lastSlot = @s dan_tab.temp
execute unless score #tab.disable_temperature dan_tab.data matches 1 run scoreboard players reset @a dan_tab.temp

#handle thirst exhaustion level
execute unless score #tab.disable_thirst dan_tab.data matches 1 if score #difficulty dan_tab.data matches 1.. run function tough_as_bedrock:thirst/handle_thirst_exhaustion

#stamina
execute unless score #tab.disable_stamina dan_tab.data matches 1 run function tough_as_bedrock:stamina/handle_stamina

#reset stats
scoreboard players reset @a dan_tab.sprint
scoreboard players reset @a dan_tab.jump
scoreboard players reset @a dan_tab.attack
scoreboard players reset @a dan_tab.sneak
scoreboard players reset @a dan_tab.swim
scoreboard players reset @a dan_tab.climb
scoreboard players reset @a dan_tab.damaged

#init items
execute as @e[type=item,tag=!dan_tab.initItem] run function tough_as_bedrock:on_event/on_init_item

#loop
schedule function tough_as_bedrock:loop/every_tick 1t replace