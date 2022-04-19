# gives pure water bottle if filled bottle in river

#check if block water bottle grabbed from is river water
execute at @e[tag=dan_tab.raycastLocation] if block ~ ~ ~ minecraft:water if predicate tough_as_bedrock:biome/river run clear @a[tag=dan_tab.check_river_water] minecraft:potion{Potion:"minecraft:water"} 1
execute at @e[tag=dan_tab.raycastLocation] if block ~ ~ ~ minecraft:water if predicate tough_as_bedrock:biome/river run loot give @a[tag=dan_tab.check_river_water] loot tough_as_bedrock:pure_water_bottle

execute at @e[tag=dan_tab.raycastLocation] if block ~ ~ ~ minecraft:water if predicate tough_as_bedrock:biome/frozen_river run clear @a[tag=dan_tab.check_river_water] minecraft:potion{Potion:"minecraft:water"} 1
execute at @e[tag=dan_tab.raycastLocation] if block ~ ~ ~ minecraft:water if predicate tough_as_bedrock:biome/frozen_river run loot give @a[tag=dan_tab.check_river_water] loot tough_as_bedrock:pure_water_bottle