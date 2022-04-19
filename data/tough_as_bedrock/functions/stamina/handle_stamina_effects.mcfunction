# stamina effects - adds effects when low on stamina

#hinderance checks
tag @s[tag=!dan_tab.stamina_hinderJump,scores={dan_tab.staminaP=..10}] add dan_tab.stamina_hinderJump
tag @s[tag=!dan_tab.stamina_hinderAttack,scores={dan_tab.staminaP=..10}] add dan_tab.stamina_hinderAttack
tag @s[tag=!dan_tab.stamina_hinderSprint,scores={dan_tab.staminaP=..33}] add dan_tab.stamina_hinderSprint
tag @s[tag=!dan_tab.stamina_drown,scores={dan_tab.stamina=0,dan_tab.swim=1..}] add dan_tab.stamina_drown

#remove hinderance
tag @s[tag=dan_tab.stamina_hinderAttack,scores={dan_tab.staminaP=11..}] remove dan_tab.stamina_hinderAttack
tag @s[tag=dan_tab.stamina_hinderSprint,scores={dan_tab.staminaP=34..}] remove dan_tab.stamina_hinderSprint
tag @s[tag=dan_tab.stamina_hinderJump,tag=!dan_tab.stamina_slowRecover,scores={dan_tab.staminaP=34..}] remove dan_tab.stamina_hinderJump
tag @s[tag=dan_tab.stamina_hinderJump,scores={dan_tab.staminaP=45..}] remove dan_tab.stamina_hinderJump

#jumping
execute as @s[tag=dan_tab.stamina_hinderJump] run function tough_as_bedrock:stamina/effects/hinder_jump

#sprinting
execute as @s[tag=dan_tab.stamina_hinderSprint] run function tough_as_bedrock:stamina/effects/hinder_sprint

#attacking
execute as @s[tag=dan_tab.stamina_hinderAttack] run function tough_as_bedrock:stamina/effects/hinder_attack

#drowning (hard mode)
execute if score #difficulty dan_tab.data matches 3 as @s[tag=dan_tab.stamina_drown] at @s run function tough_as_bedrock:stamina/effects/drown_anim
execute if score #difficulty dan_tab.data matches 3 as @s[tag=dan_tab.stamina_drown] at @s anchored eyes unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:air run function tough_as_bedrock:stamina/effects/drown

#sound and cooldown handling
tag @s[scores={dan_tab.staminaP=34..},tag=dan_tab.stamina_cooldownTiredSound] remove dan_tab.stamina_cooldownTiredSound
execute as @s[scores={dan_tab.staminaP=..33},tag=!dan_tab.stamina_cooldownTiredSound] run function tough_as_bedrock:stamina/sounds/cooldown_tired_sound
tag @s[scores={dan_tab.stamina=1..},tag=dan_cooldownExasterbatedSound] remove dan_cooldownExasterbatedSound
execute as @s[scores={dan_tab.stamina=0},tag=!dan_cooldownExasterbatedSound] run function tough_as_bedrock:stamina/sounds/cooldown_exasterbated_sound