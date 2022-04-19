# update thermometer in hand

#check which hand thermometer is in
execute if predicate tough_as_bedrock:holding/mainhand/thermometer run tag @s add dan_tab.holdingThermometerMainhand
execute if predicate tough_as_bedrock:holding/offhand/thermometer run tag @s add dan_tab.holdingThermometerOffhand

#mainhand
execute if entity @s[tag=dan_tab.holdingThermometerMainhand] if score @s dan_tab.plyrTemp matches ..-50 run replaceitem entity @s weapon.mainhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150006,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerMainhand] if score @s dan_tab.plyrTemp matches -50..0 run replaceitem entity @s weapon.mainhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150005,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerMainhand] if score @s dan_tab.plyrTemp matches 0..40 run replaceitem entity @s weapon.mainhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150004,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerMainhand] if score @s dan_tab.plyrTemp matches 40..68 run replaceitem entity @s weapon.mainhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150003,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerMainhand] if score @s dan_tab.plyrTemp matches 68..85 run replaceitem entity @s weapon.mainhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150002,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerMainhand] if score @s dan_tab.plyrTemp matches 85..100 run replaceitem entity @s weapon.mainhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150001,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerMainhand] if score @s dan_tab.plyrTemp matches 100.. run replaceitem entity @s weapon.mainhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150000,thermometer:1b}

#offhand
execute if entity @s[tag=dan_tab.holdingThermometerOffhand] if score @s dan_tab.plyrTemp matches ..-50 run replaceitem entity @s weapon.offhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150006,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerOffhand] if score @s dan_tab.plyrTemp matches -50..0 run replaceitem entity @s weapon.offhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150005,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerOffhand] if score @s dan_tab.plyrTemp matches 0..40 run replaceitem entity @s weapon.offhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150004,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerOffhand] if score @s dan_tab.plyrTemp matches 40..68 run replaceitem entity @s weapon.offhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150003,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerOffhand] if score @s dan_tab.plyrTemp matches 68..85 run replaceitem entity @s weapon.offhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150002,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerOffhand] if score @s dan_tab.plyrTemp matches 85..100 run replaceitem entity @s weapon.offhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150001,thermometer:1b}
execute if entity @s[tag=dan_tab.holdingThermometerOffhand] if score @s dan_tab.plyrTemp matches 100.. run replaceitem entity @s weapon.offhand minecraft:clock{display:{Name:'{"translate":"Thermometer","italic":false}'},CustomModelData:4150000,thermometer:1b}

#reset tags
tag @s remove dan_tab.holdingThermometerMainhand
tag @s remove dan_tab.holdingThermometerOffhand