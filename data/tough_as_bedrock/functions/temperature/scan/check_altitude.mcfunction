# scan altitude

#get altitude
execute as @s store result score #altitude dan_tab.temp run data get entity @s Pos[1]

#in the sky
execute if score #altitude dan_tab.temp matches 256.. run scoreboard players remove @s dan_tab.climate 20
execute if score #altitude dan_tab.temp matches 246..255 run scoreboard players remove @s dan_tab.climate 18
execute if score #altitude dan_tab.temp matches 236..245 run scoreboard players remove @s dan_tab.climate 17
execute if score #altitude dan_tab.temp matches 226..235 run scoreboard players remove @s dan_tab.climate 16
execute if score #altitude dan_tab.temp matches 216..225 run scoreboard players remove @s dan_tab.climate 15
execute if score #altitude dan_tab.temp matches 201..215 run scoreboard players remove @s dan_tab.climate 14
execute if score #altitude dan_tab.temp matches 191..200 run scoreboard players remove @s dan_tab.climate 13
execute if score #altitude dan_tab.temp matches 181..190 run scoreboard players remove @s dan_tab.climate 12
execute if score #altitude dan_tab.temp matches 161..180 run scoreboard players remove @s dan_tab.climate 11
execute if score #altitude dan_tab.temp matches 140..160 run scoreboard players remove @s dan_tab.climate 10
execute if score #altitude dan_tab.temp matches 131..139 run scoreboard players remove @s dan_tab.climate 9
execute if score #altitude dan_tab.temp matches 122..130 run scoreboard players remove @s dan_tab.climate 8
execute if score #altitude dan_tab.temp matches 118..121 run scoreboard players remove @s dan_tab.climate 7
execute if score #altitude dan_tab.temp matches 113..117 run scoreboard players remove @s dan_tab.climate 6
execute if score #altitude dan_tab.temp matches 107..112 run scoreboard players remove @s dan_tab.climate 5
execute if score #altitude dan_tab.temp matches 101..106 run scoreboard players remove @s dan_tab.climate 4
execute if score #altitude dan_tab.temp matches 93..100 run scoreboard players remove @s dan_tab.climate 3
execute if score #altitude dan_tab.temp matches 83..92 run scoreboard players remove @s dan_tab.climate 2
execute if score #altitude dan_tab.temp matches 75..82 run scoreboard players remove @s dan_tab.climate 1

#in cave/underground
execute if score #altitude dan_tab.temp matches 46..52 run scoreboard players remove @s dan_tab.climate 15
execute if score #altitude dan_tab.temp matches 42..45 run scoreboard players remove @s dan_tab.climate 10
execute if score #altitude dan_tab.temp matches 39..42 run scoreboard players remove @s dan_tab.climate 5

#closer to core
execute if score #altitude dan_tab.temp matches 29..38 run scoreboard players add @s dan_tab.climate 4
execute if score #altitude dan_tab.temp matches 25..28 run scoreboard players add @s dan_tab.climate 8
execute if score #altitude dan_tab.temp matches 20..27 run scoreboard players add @s dan_tab.climate 15
execute if score #altitude dan_tab.temp matches 15..19 run scoreboard players add @s dan_tab.climate 20
execute if score #altitude dan_tab.temp matches 10..14 run scoreboard players add @s dan_tab.climate 22
execute if score #altitude dan_tab.temp matches 5..9 run scoreboard players add @s dan_tab.climate 23
execute if score #altitude dan_tab.temp matches 0..4 run scoreboard players add @s dan_tab.climate 25