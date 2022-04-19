# attacking

#cooldown
scoreboard players set @s[scores={dan_tab.attack=1..,dan_tab.stamina=60..}] dan_tab.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan_tab.attack=1..,dan_tab.stamina=30..}] dan_tab.stamina 30
scoreboard players set @s[scores={dan_tab.attack=1..,dan_tab.stamina=..30}] dan_tab.stamina 0