# instant death to no thirst (hard mode)

#hide the "magic" death effect and use our own
gamerule showDeathMessages false
execute as @s run tellraw @a [{"selector":"@s"},{"text":" died of thirst"}]
kill @s
tag @s remove math.kill
gamerule showDeathMessages true