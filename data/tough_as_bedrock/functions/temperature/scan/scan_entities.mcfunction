# scans for entities nearby player

execute at @s as @e[distance=..4,type=#tough_as_bedrock:blazing] run scoreboard players add @e[tag=dan_tab.tempCalculating] dan_tab.climate 20
execute at @s as @e[distance=..4,type=#tough_as_bedrock:hot] run scoreboard players add @e[tag=dan_tab.tempCalculating] dan_tab.climate 10
execute at @s as @e[distance=..4,type=#tough_as_bedrock:warm] run scoreboard players add @e[tag=dan_tab.tempCalculating] dan_tab.climate 5
execute at @s as @e[distance=..4,type=#tough_as_bedrock:cool] run scoreboard players remove @e[tag=dan_tab.tempCalculating] dan_tab.climate 5
execute at @s as @e[distance=..4,type=#tough_as_bedrock:cold] run scoreboard players remove @e[tag=dan_tab.tempCalculating] dan_tab.climate 10
execute at @s as @e[distance=..4,type=#tough_as_bedrock:freezing] run scoreboard players remove @e[tag=dan_tab.tempCalculating] dan_tab.climate 20