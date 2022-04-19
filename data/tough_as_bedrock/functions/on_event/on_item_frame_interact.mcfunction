# called when player interacts with item frame

#begin raycast
scoreboard players set #distance dan_tab.temp 10
execute at @s run function tough_as_bedrock:raycast/start_raycast

#check if item frame interacted with has thermometer
schedule function tough_as_bedrock:temperature/init_thermometer_item_frame 1t

#reset
advancement revoke @s only tough_as_bedrock:on_item_frame_interact