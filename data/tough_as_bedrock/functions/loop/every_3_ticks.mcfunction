# every 5 ticks (1/4 second)

#HUD
execute as @a[gamemode=!creative,gamemode=!spectator] run function tough_as_bedrock:hud/hud_handler

#loop
schedule function tough_as_bedrock:loop/every_3_ticks 3t replace