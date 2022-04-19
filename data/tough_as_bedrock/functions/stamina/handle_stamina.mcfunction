# stamina handler - handles order of functions for stamina actions and stamina score

#stamina regen cooldown
scoreboard players remove @a[scores={dan_tab.staminaC=1..}] dan_tab.staminaC 1

#slowRecover tag handling
tag @a[scores={dan_tab.staminaP=..10}] add dan_tab.stamina_slowRecover
tag @a[tag=dan_tab.stamina_slowRecover,scores={dan_tab.staminaP=45..}] remove dan_tab.stamina_slowRecover

#stamina regeneration
execute as @a[scores={dan_tab.staminaC=0,dan_tab.staminaP=..99}] run scoreboard players operation @s dan_tab.stamina += @s dan_tab.s_regen

#stamina max (makes sure player's max stamina is the same as the global variable)
execute as @a unless score @s dan_tab.staminaM = #staminaMax dan_tab.data run scoreboard players operation @s dan_tab.staminaM = #staminaMax dan_tab.data

#stamina cap (sets your stamina to your max stamina if it is over it)
execute as @a run execute if score @s dan_tab.stamina > @s dan_tab.staminaM run scoreboard players operation @s dan_tab.stamina = @s dan_tab.staminaM
execute as @a run execute if score @s dan_tab.stamina = @s dan_tab.staminaM run scoreboard players set @s dan_tab.staminaP 100

#action detect
execute as @a[tag=!dan_tab.gamemodeAdmin] run function tough_as_bedrock:stamina/handle_actions

#low-stamina effect handling
execute as @a[tag=!dan_tab.gamemodeAdmin] unless score @s dan_tab.stamina = @s dan_tab.staminaM run function tough_as_bedrock:stamina/handle_stamina_effects

#climbing handler
execute as @a[tag=!dan_tab.gamemodeAdmin,tag=dan_tab.climbing] unless score @s dan_tab.climb matches 1.. run function tough_as_bedrock:stamina/actions/climbing_handler/end_climb
execute as @a[tag=!dan_tab.gamemodeAdmin,scores={dan_tab.climb=1..}] run function tough_as_bedrock:stamina/actions/climbing_handler/climbing_handler

#proning handler
#execute as @a[tag=dan_prone] run function tough_as_bedrock:stamina/actions/prone
#execute as @e[tag=dan_prone_block] run function tough_as_bedrock:stamina/actions/prone_handler/prone_handler
#tag @a[tag=dan_prone,scores={dan_tab.sneak=0}] remove dan_prone