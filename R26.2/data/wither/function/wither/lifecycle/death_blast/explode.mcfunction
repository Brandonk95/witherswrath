# The death blast itself

# Protect the loot: items can't be destroyed, and remember where the Nether Star was (the blast pushes items)
execute at @e[type=marker,tag=death_blast,limit=1] as @e[type=item,distance=..260] run data merge entity @s {Invulnerable:1b}
execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run summon marker ~ ~ ~ {Tags:["death_blast_star"]}

# Respect the destruction toggle (cleanup already turned mob_griefing back on)
execute if data storage wither:options {toggledestruction:Disabled} run gamerule mob_griefing false

# BOOM (radius = blast_radius from Fight Tuning, default 60)
execute at @e[type=marker,tag=death_blast,limit=1] run function wither:wither/lifecycle/death_blast/detonate with storage wither:options

# SFX
execute at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:explosion_emitter ~ ~ ~ 12 8 12 0 60 force
execute at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 10 8 10 0.1 800 force
execute at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:soul ~ ~ ~ 6 6 6 0.5 500 force
execute at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.generic.explode hostile @a[distance=..300] ~ ~ ~ 16 0.4
execute at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..300] ~ ~ ~ 16 0.5
execute at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.lightning_bolt.thunder weather @a[distance=..300] ~ ~ ~ 16 0.6

schedule function wither:wither/lifecycle/death_blast/end 2t
