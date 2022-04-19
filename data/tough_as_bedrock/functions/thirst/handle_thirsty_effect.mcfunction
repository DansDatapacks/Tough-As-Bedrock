# handles thirst effects on players

#add 1 to duration
scoreboard players add @s dan_tab.thirstyT 1

#give thirst exhaustion level
scoreboard players add @s dan_tab.thirstEL 10000

#reset on effect end
execute if score @s dan_tab.thirstyT matches 30.. run tag @s remove dan_tab.thirsty_effect
execute if score @s dan_tab.thirstyT matches 30.. run scoreboard players reset @s dan_tab.thirstyT