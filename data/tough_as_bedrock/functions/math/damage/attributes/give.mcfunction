# Tag
tag @s add math.temp.applied_damage

# Attributes
execute if score @s math.temp matches 1024.. run function tough_as_bedrock:math/damage/attributes/1024
execute if score @s math.temp matches 512.. run function tough_as_bedrock:math/damage/attributes/512
execute if score @s math.temp matches 256.. run function tough_as_bedrock:math/damage/attributes/256
execute if score @s math.temp matches 128.. run function tough_as_bedrock:math/damage/attributes/128
execute if score @s math.temp matches 64.. run function tough_as_bedrock:math/damage/attributes/64
execute if score @s math.temp matches 32.. run function tough_as_bedrock:math/damage/attributes/32
execute if score @s math.temp matches 16.. run function tough_as_bedrock:math/damage/attributes/16
execute if score @s math.temp matches 8.. run function tough_as_bedrock:math/damage/attributes/8
execute if score @s math.temp matches 4.. run function tough_as_bedrock:math/damage/attributes/4
execute if score @s math.temp matches 2.. run function tough_as_bedrock:math/damage/attributes/2
execute if score @s math.temp matches 1.. run function tough_as_bedrock:math/damage/attributes/1

#remove
schedule function tough_as_bedrock:math/damage/reset 1t