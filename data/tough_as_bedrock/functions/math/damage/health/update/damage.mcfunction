# Sound to simulate effect
execute at @s run playsound entity.player.hurt player @a ~ ~ ~ 1 1

# Give attributes
function tough_as_bedrock:math/damage/attributes/give

# Effect to force update health
effect give @s health_boost 1 0 true
effect clear @s health_boost

# Remove attributes
function tough_as_bedrock:math/damage/attributes/remove
