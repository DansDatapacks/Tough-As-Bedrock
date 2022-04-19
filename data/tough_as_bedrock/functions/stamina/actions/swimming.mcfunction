# swimming

#cooldown
scoreboard players set @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}},scores={dan_tab.swim=1..,dan_tab.stamina=2..}] dan_tab.staminaC 20

#stamina use
scoreboard players remove @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}},scores={dan_tab.swim=1..,dan_tab.stamina=2..}] dan_tab.stamina 2
scoreboard players set @s[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}},scores={dan_tab.swim=1..,dan_tab.stamina=..2}] dan_tab.stamina 0