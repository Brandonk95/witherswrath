# Ran every tick as the enraged Wither
<<<<<<< HEAD
# Blocks healing unless the Wither hasn't been hit for heal_delay seconds (Fight Tuning, default 5)
# wither.healCap = highest Health it's allowed to have (x100 to keep decimals)
# wither.noHit   = ticks since it last took damage
=======
# Blocks all healing: Health can only go down while enraged
# wither.healCap holds the lowest Health seen since enraging (x100 to keep decimals)
>>>>>>> parent of 9ca5b30 (explode)

execute store result score #delay wither.noHit run data get storage wither:options heal_delay 20
execute store result score #now wither.healCap run data get entity @s Health 100
execute unless score @s wither.healCap matches 1.. run scoreboard players operation @s wither.healCap = #now wither.healCap

<<<<<<< HEAD
# Took damage -> restart the 5s timer
execute if score #now wither.healCap < @s wither.healCap run scoreboard players set @s wither.noHit 0
scoreboard players add @s wither.noHit 1

# Not hit for heal_delay -> healing allowed, cap follows Health up
execute if score @s wither.noHit >= #delay wither.noHit run scoreboard players operation @s wither.healCap = #now wither.healCap

=======
>>>>>>> parent of 9ca5b30 (explode)
# New damage lowers the cap
scoreboard players operation @s wither.healCap < #now wither.healCap

# Any healing gets undone
execute if score #now wither.healCap > @s wither.healCap store result entity @s Health float 0.01 run scoreboard players get @s wither.healCap
