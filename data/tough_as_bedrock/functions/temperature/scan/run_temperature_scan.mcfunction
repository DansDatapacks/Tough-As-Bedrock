# scan for temperature due to blocks nearby

#if temperature affecting block detected
execute at @s if block ~ ~ ~ #tough_as_bedrock:freezing as @e[tag=dan_tab.tempCalculating] run function tough_as_bedrock:temperature/scan/block_temperature/freezing
execute at @s if block ~ ~ ~ #tough_as_bedrock:cold as @e[tag=dan_tab.tempCalculating] run function tough_as_bedrock:temperature/scan/block_temperature/cold
execute at @s if block ~ ~ ~ #tough_as_bedrock:cool as @e[tag=dan_tab.tempCalculating] run function tough_as_bedrock:temperature/scan/block_temperature/cool
execute at @s if block ~ ~ ~ #tough_as_bedrock:warm as @e[tag=dan_tab.tempCalculating] run function tough_as_bedrock:temperature/scan/block_temperature/warm
execute at @s if block ~ ~ ~ #tough_as_bedrock:hot as @e[tag=dan_tab.tempCalculating] run function tough_as_bedrock:temperature/scan/block_temperature/hot
execute at @s if block ~ ~ ~ #tough_as_bedrock:blazing as @e[tag=dan_tab.tempCalculating] run function tough_as_bedrock:temperature/scan/block_temperature/blazing

#next block
scoreboard players add @s dan_tab.row 1

#tp
execute unless score @s dan_tab.row matches 7.. at @s run tp ~1 ~ ~
#recursive
execute unless score @s dan_tab.row matches 7.. at @s run function tough_as_bedrock:temperature/scan/run_temperature_scan

#next layer
execute if score @s dan_tab.row matches 7.. run scoreboard players add @s dan_tab.layer 1
execute if score @s dan_tab.row matches 7.. at @s run tp ~-6 ~1 ~

#kill at end of all 7 layers
execute if score @s dan_tab.row matches 7.. if score @s dan_tab.layer matches 4.. run kill @s

#go back to first row
execute if score @s dan_tab.row matches 7.. run scoreboard players set @s dan_tab.row 0

#re-run
execute unless score @s dan_tab.layer matches 4.. at @s run function tough_as_bedrock:temperature/scan/run_temperature_scan