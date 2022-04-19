# runs when server reloads/loads

##install variables
#core
scoreboard objectives add dan_tab.temp dummy
scoreboard objectives add dan_tab.data dummy
scoreboard objectives add dan_tab.respawn deathCount
scoreboard objectives add dan_tab.death deathCount
scoreboard objectives add dan_tab.health health
scoreboard objectives add dan_tab.breath air
scoreboard objectives add dan_tab.lastSlot dummy

#scanning
scoreboard objectives add dan_tab.row dummy
scoreboard objectives add dan_tab.layer dummy

#stats
# S = saturation, M = max, P = percent, C = cooldown, T = timer, EL = exhaustion level
#thirst
scoreboard objectives add dan_tab.thirst dummy
scoreboard objectives add dan_tab.thirstS dummy
scoreboard objectives add dan_tab.thirstEL dummy
scoreboard objectives add dan_tab.thirstyT dummy
scoreboard objectives add dan_tab.wtrbtls dummy
#stamina
scoreboard objectives add dan_tab.stamina dummy
scoreboard objectives add dan_tab.staminaM dummy
scoreboard objectives add dan_tab.staminaP dummy
scoreboard objectives add dan_tab.staminaC dummy
scoreboard objectives add dan_tab.s_regen dummy
scoreboard objectives add dan_tab.s_regenM dummy
#temperature
scoreboard objectives add dan_tab.plyrTemp dummy
scoreboard objectives add dan_tab.climate dummy

#natural stats
scoreboard objectives add dan_tab.sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add dan_tab.jump minecraft.custom:minecraft.jump
scoreboard objectives add dan_tab.attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add dan_tab.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add dan_tab.swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add dan_tab.damaged minecraft.custom:minecraft.damage_taken
scoreboard objectives add dan_tab.climb dummy

##install constants
scoreboard players set #2 dan_tab.data 2
scoreboard players set #4 dan_tab.data 4
scoreboard players set #10 dan_tab.data 10
scoreboard players set #100 dan_tab.data 100

#start loops
function tough_as_bedrock:loop/every_tick
function tough_as_bedrock:loop/every_3_ticks
function tough_as_bedrock:loop/every_5_ticks
function tough_as_bedrock:loop/every_10_ticks
function tough_as_bedrock:loop/every_20_ticks
function tough_as_bedrock:loop/every_40_ticks