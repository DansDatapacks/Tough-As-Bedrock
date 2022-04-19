# sprint jumping

#cooldown
scoreboard players set @s[scores={dan_tab.sprint=1..,dan_tab.jump=1..,dan_tab.stamina=40..}] dan_tab.staminaC 20

#stamina use
scoreboard players remove @s[scores={dan_tab.sprint=1..,dan_tab.jump=1..,dan_tab.stamina=40..}] dan_tab.stamina 40
scoreboard players set @s[scores={dan_tab.sprint=1..,dan_tab.jump=1..,dan_tab.stamina=..40}] dan_tab.stamina 0