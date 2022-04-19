# every 40 ticks (2 seconds)

#no thirst damage
execute unless score #tab.disable_thirst dan_tab.data matches 1 if score #difficulty dan_tab.data matches 1.. as @a[scores={dan_tab.thirst=..0}] run function tough_as_bedrock:thirst/effects/no_thirst

#too hot or too cold
execute unless score #tab.disable_temperature dan_tab.data matches 1 as @a[scores={dan_tab.plyrTemp=..-50}] run function tough_as_bedrock:temperature/effects/cold
execute unless score #tab.disable_temperature dan_tab.data matches 1 as @a[scores={dan_tab.plyrTemp=100..}] run function tough_as_bedrock:temperature/effects/hot

#loop
schedule function tough_as_bedrock:loop/every_40_ticks 40t replace