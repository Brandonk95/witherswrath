# Ran every tick as the enraged Wither
# Blocks all healing: Health can only go down while enraged
# wither.healCap holds the lowest Health seen since enraging (x100 to keep decimals)

execute store result score #now wither.healCap run data get entity @s Health 100
execute unless score @s wither.healCap matches 1.. run scoreboard players operation @s wither.healCap = #now wither.healCap

# New damage lowers the cap
scoreboard players operation @s wither.healCap < #now wither.healCap

# Any healing gets undone
execute if score #now wither.healCap > @s wither.healCap store result entity @s Health float 0.01 run scoreboard players get @s wither.healCap
