# handles player's stamina percent

#percent stamina update (if your stamina isnt at max)
execute as @a[gamemode=creative] run scoreboard players operation @s dan_tab.stamina = @s dan_tab.staminaM
execute as @a unless score @s dan_tab.stamina = @s dan_tab.staminaM run function tough_as_bedrock:stamina/calculate_stamina_percent
execute as @a if score @s dan_tab.stamina = @s dan_tab.staminaM if score @s dan_tab.staminaP > #100 dan_tab.data run function tough_as_bedrock:stamina/calculate_stamina_percent