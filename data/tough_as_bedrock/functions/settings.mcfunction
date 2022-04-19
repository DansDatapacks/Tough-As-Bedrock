# change settings

#title
tellraw @p [{"text":"\n[❒] ","color":"gray"},{"text":"Toggle Features On/Off:","underlined":true,"color":"gray"}]

#spacer
tellraw @s [{"text":"[❒]","color":"gray"}]

#temperature
execute unless score #tab.disable_temperature dan_tab.data matches 1 run tellraw @s [{"text":"[❒] ","color":"gray"},{"text":"Temperature","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"You can overheat or freeze depending on the temperature around you","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function tough_as_bedrock:toggle/temperature"}}]
execute if score #tab.disable_temperature dan_tab.data matches 1 run tellraw @s [{"text":"[❒] ","color":"gray"},{"text":"Temperature","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"You can overheat or freeze depending on the temperature around you","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function tough_as_bedrock:toggle/temperature"}}]

#spacer
tellraw @s [{"text":"[❒]","color":"gray"}]

#stamina
execute unless score #tab.disable_stamina dan_tab.data matches 1 run tellraw @s [{"text":"[❒] ","color":"gray"},{"text":"Stamina","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"The more you move, the faster your stamina depletes","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function tough_as_bedrock:toggle/stamina"}}]
execute if score #tab.disable_stamina dan_tab.data matches 1 run tellraw @s [{"text":"[❒] ","color":"gray"},{"text":"Stamina","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"The more you move, the faster your stamina depletes","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function tough_as_bedrock:toggle/stamina"}}]

#spacer
tellraw @s [{"text":"[❒]","color":"gray"}]

#thirst
execute unless score #tab.disable_thirst dan_tab.data matches 1 run tellraw @s [{"text":"[❒] ","color":"gray"},{"text":"Thirst","color":"green","hoverEvent":{"action":"show_text","value":["",{"text":"You have to now pay attention to your hydration and not just hunger","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle Off]","color":"red","clickEvent":{"action":"run_command","value":"/function tough_as_bedrock:toggle/thirst"}}]
execute if score #tab.disable_thirst dan_tab.data matches 1 run tellraw @s [{"text":"[❒] ","color":"gray"},{"text":"Thirst","color":"red","hoverEvent":{"action":"show_text","value":["",{"text":"You have to now pay attention to your hydration and not just hunger","color":"gray"}]}},{"text":" - ","color":"gray"},{"text":"[Toggle On]","color":"green","clickEvent":{"action":"run_command","value":"/function tough_as_bedrock:toggle/thirst"}}]

#spacer
tellraw @s [{"text":"[❒]","color":"gray"}]

#exit button
#tellraw @s [{"text":"[❒] ","color":"gray"},{"text":"\n"},{"text":"[⋇] ","color":"gray"},{"text":"[Exit]","color":"red","clickEvent":{"action":"run_command","value":"/function dan.main:message/utility/clear_chat"}}]