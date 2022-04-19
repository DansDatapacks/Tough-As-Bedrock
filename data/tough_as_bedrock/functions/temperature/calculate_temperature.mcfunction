# calculate player's temperature

#get climate
function tough_as_bedrock:temperature/calculate_climate

##calc
#get difference between climate and player's current temperature
scoreboard players operation @s dan_tab.temp = @s dan_tab.climate
scoreboard players operation @s dan_tab.temp -= @s dan_tab.plyrTemp
#find the scale at which to change player's temp dependant on how big the difference between climate and player's temp is
execute unless entity @s[tag=dan_tab.touchingTemperatureBlock] run scoreboard players operation @s dan_tab.temp /= #4 dan_tab.data

#change temp
execute unless score @s dan_tab.plyrTemp = @s dan_tab.climate run scoreboard players operation @s dan_tab.plyrTemp += @s dan_tab.temp

#tellraw @a {"score":{"name":"@s","objective":"dan_tab.temp"}}

#update thermometer
execute if entity @s[tag=dan_tab.holdingThermometer] run function tough_as_bedrock:temperature/update_thermometer

#reset temp data
scoreboard players reset @s dan_tab.temp
#scoreboard players reset @s dan_tab.climate
tag @s remove dan_tab.touchingTemperatureBlock