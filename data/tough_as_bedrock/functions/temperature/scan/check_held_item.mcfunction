# check held item's temperature

#mainhand
execute if predicate tough_as_bedrock:temperature/mainhand/blazing run scoreboard players add @s dan_tab.climate 150
execute if predicate tough_as_bedrock:temperature/mainhand/hot run scoreboard players add @s dan_tab.climate 90
execute if predicate tough_as_bedrock:temperature/mainhand/warm run scoreboard players add @s dan_tab.climate 15
execute if predicate tough_as_bedrock:temperature/mainhand/cool run scoreboard players remove @s dan_tab.climate 10
execute if predicate tough_as_bedrock:temperature/mainhand/cold run scoreboard players remove @s dan_tab.climate 25
execute if predicate tough_as_bedrock:temperature/mainhand/freezing run scoreboard players remove @s dan_tab.climate 50

#offhand
execute if predicate tough_as_bedrock:temperature/offhand/blazing run scoreboard players add @s dan_tab.climate 150
execute if predicate tough_as_bedrock:temperature/offhand/hot run scoreboard players add @s dan_tab.climate 90
execute if predicate tough_as_bedrock:temperature/offhand/warm run scoreboard players add @s dan_tab.climate 15
execute if predicate tough_as_bedrock:temperature/offhand/cool run scoreboard players remove @s dan_tab.climate 10
execute if predicate tough_as_bedrock:temperature/offhand/cold run scoreboard players remove @s dan_tab.climate 25
execute if predicate tough_as_bedrock:temperature/offhand/freezing run scoreboard players remove @s dan_tab.climate 50