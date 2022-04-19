# every 5 ticks (1/4 second)

#detect difficulty change
execute store result score #difficulty dan_tab.temp run difficulty
execute unless score #difficulty dan_tab.data = #difficulty dan_tab.temp run function tough_as_bedrock:on_event/on_difficulty_change

#detect new players
execute as @a[tag=!dan_tab.initPlayer] run function tough_as_bedrock:on_event/on_init_player

#detect respawn
execute as @e[type=minecraft:player] if score @s dan_tab.respawn matches 1.. run function tough_as_bedrock:on_event/on_respawn

#detect death
execute as @a if score @s dan_tab.death matches 1.. run function tough_as_bedrock:on_event/on_death

#detect look rotation
execute run function tough_as_bedrock:stamina/checks/look_detect

#detect gamemode admin/player
execute as @a[gamemode=!survival,gamemode=!adventure,tag=!dan_tab.gamemodeAdmin] run function tough_as_bedrock:on_event/on_gamemode_admin
execute as @a[gamemode=!creative,gamemode=!spectator,tag=!dan_tab.gamemodePlayer] run function tough_as_bedrock:on_event/on_gamemode_player

#detect time of day
execute store result score #currentTime dan_tab.temp run time query daytime

#thirst (non-peaceful)
execute unless score #tab.disable_thirst dan_tab.data matches 1 if score #difficulty dan_tab.data matches 1.. run function tough_as_bedrock:thirst/handle_thirst

#thermometer craft
execute as @e[type=item,tag=dan_tab.itemGlass,tag=dan_tab.itemCount4] at @s if entity @e[distance=..0.3,sort=nearest,tag=dan_tab.itemRedstone] run function tough_as_bedrock:temperature/craft_thermometer

#loop
schedule function tough_as_bedrock:loop/every_5_ticks 5t replace