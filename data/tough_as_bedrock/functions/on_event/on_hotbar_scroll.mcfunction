# on hotbar scroll

#reset tags
tag @s remove dan_tab.holdingThermometer

#check if holding thermometer
execute if predicate tough_as_bedrock:holding/thermometer run tag @s add dan_tab.holdingThermometer