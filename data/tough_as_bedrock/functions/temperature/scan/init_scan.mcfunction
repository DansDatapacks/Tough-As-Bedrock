# init scan

#begin scan by spawning scan AECs
execute positioned ~-3 ~-1 ~-3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan_tab.scanAEC","dan_tab.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-1 ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan_tab.scanAEC","dan_tab.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-1 ~-1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan_tab.scanAEC","dan_tab.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-1 ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan_tab.scanAEC","dan_tab.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-1 ~1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan_tab.scanAEC","dan_tab.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-1 ~2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan_tab.scanAEC","dan_tab.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-1 ~3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["dan_tab.scanAEC","dan_tab.scanAEC_init","global.ignore"]}

#run scan
execute as @e[type=minecraft:area_effect_cloud,tag=dan_tab.scanAEC_init] run function tough_as_bedrock:temperature/scan/run_temperature_scan

#remove tags
tag @e[type=minecraft:area_effect_cloud,tag=dan_tab.scanAEC_init] remove dan_tab.scanAEC_init