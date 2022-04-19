# checks temp of block touching player

#check block player is in
execute at @s if block ~ ~ ~ #tough_as_bedrock:freezing run function tough_as_bedrock:temperature/scan/block_temperature/touching/freezing
execute at @s if block ~ ~ ~ #tough_as_bedrock:cold run function tough_as_bedrock:temperature/scan/block_temperature/touching/cold
execute at @s if block ~ ~ ~ #tough_as_bedrock:cool run function tough_as_bedrock:temperature/scan/block_temperature/touching/cool
execute at @s if block ~ ~ ~ #tough_as_bedrock:warm run function tough_as_bedrock:temperature/scan/block_temperature/touching/warm
execute at @s if block ~ ~ ~ #tough_as_bedrock:hot run function tough_as_bedrock:temperature/scan/block_temperature/touching/hot
execute at @s if block ~ ~ ~ #tough_as_bedrock:blazing run function tough_as_bedrock:temperature/scan/block_temperature/touching/blazing

#check block below player
execute at @s if block ~ ~-0.1 ~ #tough_as_bedrock:freezing run function tough_as_bedrock:temperature/scan/block_temperature/touching/freezing
execute at @s if block ~ ~-0.1 ~ #tough_as_bedrock:cold run function tough_as_bedrock:temperature/scan/block_temperature/touching/cold
execute at @s if block ~ ~-0.1 ~ #tough_as_bedrock:cool run function tough_as_bedrock:temperature/scan/block_temperature/touching/cool
execute at @s if block ~ ~-0.1 ~ #tough_as_bedrock:warm run function tough_as_bedrock:temperature/scan/block_temperature/touching/warm
execute at @s if block ~ ~-0.1 ~ #tough_as_bedrock:hot run function tough_as_bedrock:temperature/scan/block_temperature/touching/hot
execute at @s if block ~ ~-0.1 ~ #tough_as_bedrock:blazing run function tough_as_bedrock:temperature/scan/block_temperature/touching/blazing

#if on fire
execute store result score #onFire dan_tab.temp run data get entity @s Fire 1
execute if score #onFire dan_tab.temp matches 1.. run scoreboard players add @s dan_tab.climate 75

#reset temp data
scoreboard players reset #onFire dan_tab.temp