# every 20 ticks (1 second)

#thirsty effect
execute as @a[tag=dan_tab.thirsty_effect,tag=!dan_tab.gamemodeAdmin] run function tough_as_bedrock:thirst/handle_thirsty_effect

#drink river water
execute unless score #tab.disable_thirst dan_tab.data matches 1 as @a[scores={dan_tab.thirst=..19},tag=!dan_tab.gamemodeAdmin] at @s if block ~ ~ ~ #minecraft:underwater_blocks if predicate tough_as_bedrock:biome/river run function tough_as_bedrock:thirst/effects/drink_river_water
execute unless score #tab.disable_thirst dan_tab.data matches 1 as @a[scores={dan_tab.thirst=..19},tag=!dan_tab.gamemodeAdmin] at @s if block ~ ~ ~ #minecraft:underwater_blocks if predicate tough_as_bedrock:biome/frozen_river run function tough_as_bedrock:thirst/effects/drink_river_water

#climbing sound effect
execute unless score #tab.disable_stamina dan_tab.data matches 1 as @a[tag=dan_tab.climbing] run function tough_as_bedrock:stamina/sounds/climbing_sound

#calc temperature for players
execute unless score #tab.disable_temperature dan_tab.data matches 1 as @a run function tough_as_bedrock:temperature/calculate_temperature

#thermometer entity update
execute unless score #tab.disable_temperature dan_tab.data matches 1 as @e[tag=dan_tab.thermometerEntity] run function tough_as_bedrock:temperature/update_thermometer_entity

#loop
schedule function tough_as_bedrock:loop/every_20_ticks 20t replace