# sprinting

#cooldown
scoreboard players set @s[scores={dan_tab.sprint=1..,dan_tab.stamina=2..}] dan_tab.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan_tab.sprint=1..,dan_tab.stamina=2..}] dan_tab.stamina 2
scoreboard players set @s[scores={dan_tab.sprint=1..,dan_tab.stamina=..2}] dan_tab.stamina 0

#stamina effect
tag @s[scores={dan_tab.staminaP=0..33}] add dan_tab.stamina_hinderSprint