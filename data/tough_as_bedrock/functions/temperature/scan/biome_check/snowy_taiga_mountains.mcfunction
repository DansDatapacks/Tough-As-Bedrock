execute if score #currentTime dan_tab.temp matches 18000..20000 run scoreboard players set @s dan_tab.climate 10
execute if score #currentTime dan_tab.temp matches 20000..22000 run scoreboard players set @s dan_tab.climate 12
execute if score #currentTime dan_tab.temp matches 22000..24000 run scoreboard players set @s dan_tab.climate 13
execute if score #currentTime dan_tab.temp matches 0..2000 run scoreboard players set @s dan_tab.climate 15
execute if score #currentTime dan_tab.temp matches 2000..4000 run scoreboard players set @s dan_tab.climate 18
execute if score #currentTime dan_tab.temp matches 4000..6000 run scoreboard players set @s dan_tab.climate 20
execute if score #currentTime dan_tab.temp matches 6000..8000 run scoreboard players set @s dan_tab.climate 22
execute if score #currentTime dan_tab.temp matches 8000..10000 run scoreboard players set @s dan_tab.climate 20
execute if score #currentTime dan_tab.temp matches 10000..12000 run scoreboard players set @s dan_tab.climate 18
execute if score #currentTime dan_tab.temp matches 12000..14000 run scoreboard players set @s dan_tab.climate 16
execute if score #currentTime dan_tab.temp matches 14000..16000 run scoreboard players set @s dan_tab.climate 14
execute if score #currentTime dan_tab.temp matches 16000..18000 run scoreboard players set @s dan_tab.climate 10

#reset
advancement revoke @s from tough_as_bedrock:biome_check/root