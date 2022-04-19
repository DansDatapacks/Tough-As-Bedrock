# run raycast

#if hit block
execute unless block ~ ~ ~ minecraft:air run scoreboard players set #hit dan_tab.temp 1
execute if entity @e[type=!minecraft:player,distance=..0.1] run scoreboard players set #hit dan_tab.temp 1

#increase distance
scoreboard players add #distanceTraveled dan_tab.temp 1

#tellraw @a {"score":{"name":"#distance","objective":"dan_tab.temp"}}
#tellraw @a {"score":{"name":"#hit","objective":"dan_tab.temp"}}
#tellraw @a {"score":{"name":"#distanceTraveled","objective":"dan_tab.temp"}}

#summon entity where hit
execute if score #hit dan_tab.temp matches 1 run function tough_as_bedrock:raycast/end_raycast

#continue ray
execute if score #hit dan_tab.temp matches 0 unless score #distanceTraveled dan_tab.temp = #distance dan_tab.temp positioned ^ ^ ^1 run function tough_as_bedrock:raycast/run_raycast