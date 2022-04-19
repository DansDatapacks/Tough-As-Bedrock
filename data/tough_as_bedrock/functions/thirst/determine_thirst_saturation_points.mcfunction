# determines thirst saturation points from vanilla minecraft item

#mainhand
execute if predicate tough_as_bedrock:thirst_saturation/mainhand/24 run scoreboard players set @s dan_tab.temp 24

#offhand
execute unless score @s dan_tab.temp matches 1.. if predicate tough_as_bedrock:thirst_saturation/offhand/24 run scoreboard players set @s dan_tab.temp 24