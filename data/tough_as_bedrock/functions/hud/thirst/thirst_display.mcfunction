#  stamina display - displays the stamina bar in the action bar

#get @s's thirst and set HUD on sign
execute unless score @s[tag=!dan_tab.thirsty_effect] dan_tab.breath matches ..299 run function tough_as_bedrock:hud/thirst/set_thirst
execute if score @s[tag=!dan_tab.thirsty_effect] dan_tab.breath matches ..299 run function tough_as_bedrock:hud/thirst/set_thirst_offset
execute unless score @s[tag=dan_tab.thirsty_effect] dan_tab.breath matches ..299 run function tough_as_bedrock:hud/thirst/set_thirst_thirsty
execute if score @s[tag=dan_tab.thirsty_effect] dan_tab.breath matches ..299 run function tough_as_bedrock:hud/thirst/set_thirst_thirsty_offset