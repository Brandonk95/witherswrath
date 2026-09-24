# Ran 1t after the Wither dies (after nether_star/main)
# Anchors a charging explosion on the Nether Star, detonates after blast_charge seconds

execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run summon marker ~ ~ ~ {Tags:["death_blast"]}
scoreboard players set #timer wither.blast 0
scoreboard players set #20 wither.blast 20
execute store result score #charge wither.blast run data get storage wither:options blast_charge 20

execute if entity @e[type=marker,tag=death_blast] run function wither:wither/lifecycle/death_blast/tick
