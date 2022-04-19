# handles thirst

#min/max thirst
scoreboard players set @a[scores={dan_tab.thirst=21..}] dan_tab.thirst 20
scoreboard players set @a[scores={dan_tab.thirst=..-1}] dan_tab.thirst 0

#min/max thirst saturation
execute as @a run scoreboard players operation @s dan_tab.temp = @s dan_tab.thirst
execute as @a run scoreboard players operation @s dan_tab.temp *= #10 dan_tab.data
execute as @a if score @s dan_tab.thirstS > @s dan_tab.temp run scoreboard players operation @s dan_tab.thirstS = @s dan_tab.temp
scoreboard players set @a[scores={dan_tab.thirstS=..-1}] dan_tab.thirstS 0

#decrease thirst/thirst saturation
scoreboard players remove @a[scores={dan_tab.thirstEL=40000..,dan_tab.thirstS=..0,dan_tab.thirst=1..},tag=!dan_tab.gamemodeAdmin] dan_tab.thirst 1
scoreboard players remove @a[scores={dan_tab.thirstEL=40000..,dan_tab.thirstS=1..},tag=!dan_tab.gamemodeAdmin] dan_tab.thirstS 10
scoreboard players set @a[scores={dan_tab.thirstEL=40000..}] dan_tab.thirstEL 0

#low thirst effects
execute if score #difficulty dan_tab.data matches 1.. as @a[scores={dan_tab.thirst=4..6},tag=!dan_tab.gamemodeAdmin] run effect give @s slowness 1 0 true
execute if score #difficulty dan_tab.data matches 1.. as @a[scores={dan_tab.thirst=0..4},tag=!dan_tab.gamemodeAdmin] run effect give @s slowness 1 1 true
execute if score #difficulty dan_tab.data matches 1.. as @a[scores={dan_tab.thirst=0..2},tag=!dan_tab.gamemodeAdmin] run effect give @s mining_fatigue 1 1 true

#reset temp variables
scoreboard players reset @a dan_tab.temp