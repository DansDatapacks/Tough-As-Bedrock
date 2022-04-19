#  stamina display - displays the stamina bar in the action bar

#set HUD on sign
execute unless score #tab.disable_thirst dan_tab.data matches 1 unless score @s dan_tab.breath matches ..299 run function tough_as_bedrock:hud/stamina/set_stamina
execute unless score #tab.disable_thirst dan_tab.data matches 1 if score @s dan_tab.breath matches ..299 run function tough_as_bedrock:hud/stamina/set_stamina_offset

#thirst off, push stamina down 
execute if score #tab.disable_thirst dan_tab.data matches 1 unless score @s dan_tab.breath matches ..299 run function tough_as_bedrock:hud/stamina/set_stamina_lower
execute if score #tab.disable_thirst dan_tab.data matches 1 if score @s dan_tab.breath matches ..299 run function tough_as_bedrock:hud/stamina/set_stamina