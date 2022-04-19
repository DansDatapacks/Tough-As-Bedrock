# climb handler

#climb tag
tag @s add dan_tab.climbing

#apply climbing effect if climbing point detected
execute as @s at @s anchored eyes unless block ^ ^ ^1 #tough_as_bedrock:unclimbable run function tough_as_bedrock:stamina/actions/climbing
execute as @s[tag=!dan.climb_process] at @s if block ~ ~-0.3 ~ #tough_as_bedrock:unclimbable anchored feet unless block ^ ^ ^1 #tough_as_bedrock:unclimbable run function tough_as_bedrock:stamina/actions/climbing
execute as @s[tag=!dan.climb_process] at @s if block ~ ~-0.3 ~ #tough_as_bedrock:unclimbable anchored feet positioned ~ ~.6 ~ unless block ^ ^ ^1 #tough_as_bedrock:unclimbable run function tough_as_bedrock:stamina/actions/climbing
execute as @s[tag=!dan.climb_process] at @s if block ~ ~-0.3 ~ #tough_as_bedrock:unclimbable anchored feet positioned ~ ~-.6 ~ unless block ^ ^ ^1 #tough_as_bedrock:unclimbable run function tough_as_bedrock:stamina/actions/climbing
execute as @s[tag=!dan.climb_process] at @s run function tough_as_bedrock:stamina/actions/climbing_handler/end_climb

#end of climb detect
#execute as @s at @s anchored feet if block ^ ^ ^1 minecraft:air run scoreboard players set dan_tab.climb 0
#execute at @s[scores={dan_tab.climb=1..}] anchored eyes if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.5

#remove process tag (used to make sure only one of the climb effect commands run per tick per player)
tag @s remove dan.climb_process