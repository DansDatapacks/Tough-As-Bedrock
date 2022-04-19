# sneaking - these run only when the player is sneaking

#climbing detect
execute as @s[tag=dan_tab.lookUp] at @s unless block ~ ~ ~ minecraft:water run scoreboard players add @s dan_tab.climb 1

#prone handler
#execute as @s[tag=dan_tab.lookVeryDown] run tag @s add dan_prone