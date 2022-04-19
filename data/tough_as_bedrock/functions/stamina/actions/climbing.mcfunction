# climbing

#cooldown
scoreboard players set @s[scores={dan_tab.climb=1..,dan_tab.stamina=3..}] dan_tab.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan_tab.climb=1..,dan_tab.stamina=3..}] dan_tab.stamina 3
scoreboard players set @s[scores={dan_tab.climb=1..,dan_tab.stamina=..3}] dan_tab.stamina 0

#climbing
effect give @s minecraft:levitation 1 1 true

#remove effect if no more stamina
effect clear @s[scores={dan_tab.stamina=0}] minecraft:levitation

#add process tag
tag @s add dan.climb_process