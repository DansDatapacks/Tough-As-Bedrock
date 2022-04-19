# called on a player when they die

#tag
tag @s add dan_tab.dead

#reset thirst
scoreboard players set @s dan_tab.thirst 20
scoreboard players set @s dan_tab.thirstS 50

#remove thirsty effect
tag @s remove dan_tab.thirsty_effect
scoreboard players reset @s dan_tab.thirstyT

#reset stamina
scoreboard players operation @s dan_tab.stamina = @p dan_tab.staminaM
scoreboard players set @s dan_tab.staminaP 100

#remove stamina hinderance tags
tag @s remove dan_tab.stamina_slowRecover
tag @s remove dan_tab.stamina_hinderJump
tag @s remove dan_tab.stamina_hinderSprint
tag @s remove dan_tab.stamina_hinderAttack
tag @s remove dan_tab.stamina_cooldownTiredSound

#reset
scoreboard players reset @s dan_tab.death