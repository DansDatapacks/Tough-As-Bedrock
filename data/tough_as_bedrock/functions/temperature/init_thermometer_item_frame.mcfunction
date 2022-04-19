# inits thermometer item frame

#give tag if item frame has thermometer
execute at @e[tag=dan_tab.raycastLocation] as @e[type=minecraft:item_frame,limit=1,sort=nearest,distance=..0.5] if data entity @s {Item:{id:"minecraft:clock",tag:{thermometer:1b}}} run tag @s add dan_tab.thermometerEntity