# toggles thirst

#toggle
scoreboard players add #tab.disable_thirst dan_tab.data 1

#on
execute if score #tab.disable_thirst dan_tab.data matches 2.. run scoreboard players set #tab.disable_thirst dan_tab.data 0
#sound
execute if score #tab.disable_thirst dan_tab.data matches 0 run playsound block.note_block.bell master @s ~ ~ ~ 0.8 2

#off
#sound
execute if score #tab.disable_thirst dan_tab.data matches 1 run playsound block.note_block.pling master @s ~ ~ ~ 0.8 2

#reopen toggle list
function tough_as_bedrock:settings