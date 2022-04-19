# every 10 ticks (1/2 second)

#stamina percent handler
execute unless score #tab.disable_stamina dan_tab.data matches 1 run function tough_as_bedrock:stamina/handle_stamina_percent

#regen thirst in peaceful mode
execute unless score #tab.disable_thirst dan_tab.data matches 1 if score #difficulty dan_tab.data matches 0 as @a[scores={dan_tab.thirst=..19},tag=!dan_tab.gamemodeAdmin] run function tough_as_bedrock:thirst/effects/regenerate_thirst

#loop
schedule function tough_as_bedrock:loop/every_10_ticks 10t replace