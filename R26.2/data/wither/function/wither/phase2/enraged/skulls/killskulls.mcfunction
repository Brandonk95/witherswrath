execute as @e[type=minecraft:wither_skull,tag=deathtag] at @s run summon tnt ~ ~ ~ {fuse:0}
kill @e[type=minecraft:wither_skull,tag=deathtag]

execute if score witherCount witherCount matches 1.. if score enraged wenraged matches 1 if data storage wither:options {skull_ring:1b} run function wither:wither/phase2/enraged/skulls/ring_next with storage wither:options


