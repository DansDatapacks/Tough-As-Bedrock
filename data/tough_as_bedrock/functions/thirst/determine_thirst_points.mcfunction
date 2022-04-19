# determines thirst points from vanilla minecraft item

#mainhand
execute if predicate tough_as_bedrock:thirst/mainhand/dirty run scoreboard players set $Dirty dan_tab.temp 1
execute if predicate tough_as_bedrock:thirst/mainhand/1 run scoreboard players set @s dan_tab.temp 1
execute if predicate tough_as_bedrock:thirst/mainhand/2 run scoreboard players set @s dan_tab.temp 2
execute if predicate tough_as_bedrock:thirst/mainhand/3 run scoreboard players set @s dan_tab.temp 3
execute if predicate tough_as_bedrock:thirst/mainhand/6 run scoreboard players set @s dan_tab.temp 6

#offhand
execute unless score @s dan_tab.temp matches 1.. if predicate tough_as_bedrock:thirst/offhand/dirty run scoreboard players set $Dirty dan_tab.temp 1
execute unless score @s dan_tab.temp matches 1.. if predicate tough_as_bedrock:thirst/offhand/1 run scoreboard players set @s dan_tab.temp 1
execute unless score @s dan_tab.temp matches 1.. if predicate tough_as_bedrock:thirst/offhand/2 run scoreboard players set @s dan_tab.temp 2
execute unless score @s dan_tab.temp matches 1.. if predicate tough_as_bedrock:thirst/offhand/3 run scoreboard players set @s dan_tab.temp 3
execute unless score @s dan_tab.temp matches 1.. if predicate tough_as_bedrock:thirst/offhand/6 run scoreboard players set @s dan_tab.temp 6