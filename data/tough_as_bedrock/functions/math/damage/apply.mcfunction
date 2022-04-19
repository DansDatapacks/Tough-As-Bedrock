# Calculate health modifier
function tough_as_bedrock:math/damage/calculate/health_modifier

# Death (may redirect to another function to simulate death)
execute if score @s math.temp >= #maximum_health math.temp run tag @s add math.kill

# New health
execute if score @s math.temp < #maximum_health math.temp run function tough_as_bedrock:math/damage/health/decide

# Reset score
scoreboard players reset @s math.temp