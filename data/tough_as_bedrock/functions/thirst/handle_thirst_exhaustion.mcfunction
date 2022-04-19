# handles thirst exhaustion level

#sprinting
execute as @a[scores={dan_tab.sprint=1..}] run scoreboard players operation @s dan_tab.temp = @s dan_tab.sprint
execute as @a[scores={dan_tab.sprint=1..}] run scoreboard players operation @s dan_tab.temp *= #10 dan_tab.data
execute as @a[scores={dan_tab.sprint=1..}] run scoreboard players operation @s dan_tab.thirstEL += @s dan_tab.temp

#swimming
execute as @a[scores={dan_tab.swim=1..}] run scoreboard players operation @s dan_tab.thirstEL += @s dan_tab.swim

#jumping
execute as @a[scores={dan_tab.jump=1..}] run scoreboard players add @s dan_tab.thirstEL 5

#attacking
execute as @a[scores={dan_tab.attack=1..}] run scoreboard players add @s dan_tab.thirstEL 100

#damaged
execute as @a[scores={dan_tab.damaged=1..}] run scoreboard players add @s dan_tab.thirstEL 100

#jumping while sprinting
execute as @a[scores={dan_tab.sprint=1..,dan_tab.jump=1..}] run scoreboard players add @s dan_tab.thirstEL 2000

#low stamina
execute as @a[scores={dan_tab.staminaP=..60}] run scoreboard players add @s dan_tab.thirstEL 500

#high temperature
execute as @a[scores={dan_tab.plyrTemp=100..}] run scoreboard players add @s dan_tab.thirstEL 200

#reset temp variables
scoreboard players reset @a dan_tab.temp