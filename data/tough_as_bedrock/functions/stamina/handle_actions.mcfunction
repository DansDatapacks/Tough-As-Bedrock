#action handler

#action detect
execute if entity @s[scores={dan_tab.sprint=1..}] as @s run function tough_as_bedrock:stamina/actions/sprinting
execute if entity @s[scores={dan_tab.jump=1..}] as @s run function tough_as_bedrock:stamina/actions/jumping
execute if entity @s[scores={dan_tab.sprint=1..,dan_tab.jump=1..}] as @s run function tough_as_bedrock:stamina/actions/sprint_jumping
execute if entity @s[scores={dan_tab.attack=1..}] as @s run function tough_as_bedrock:stamina/actions/attacking
execute if entity @s[scores={dan_tab.swim=1..}] as @s run function tough_as_bedrock:stamina/actions/swimming
execute if entity @s[scores={dan_tab.sneak=1..}] as @s run function tough_as_bedrock:stamina/actions/sneaking