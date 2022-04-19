# runs on difficulty change

#get new difficulty
scoreboard players operation #difficulty dan_tab.data = #difficulty dan_tab.temp

#peaceful
execute if score #difficulty dan_tab.data matches 0 run scoreboard players set #staminaMax dan_tab.data 600
execute if score #difficulty dan_tab.data matches 0 run scoreboard players set #staminaRegenMax dan_tab.data 3

#easy
execute if score #difficulty dan_tab.data matches 1 run scoreboard players set #staminaMax dan_tab.data 450
execute if score #difficulty dan_tab.data matches 1 run scoreboard players set #staminaRegenMax dan_tab.data 2

#normal
execute if score #difficulty dan_tab.data matches 2 run scoreboard players set #staminaMax dan_tab.data 400
execute if score #difficulty dan_tab.data matches 2 run scoreboard players set #staminaRegenMax dan_tab.data 2

#hard
execute if score #difficulty dan_tab.data matches 3 run scoreboard players set #staminaMax dan_tab.data 300
execute if score #difficulty dan_tab.data matches 3 run scoreboard players set #staminaRegenMax dan_tab.data 1