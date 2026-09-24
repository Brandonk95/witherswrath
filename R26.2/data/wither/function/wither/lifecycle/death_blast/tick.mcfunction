# Charge-up loop for the death blast (1 tick per run)
scoreboard players add #timer wither.blast 1

# #left = ticks until detonation, #sec = 0 on every full second
scoreboard players operation #left wither.blast = #charge wither.blast
scoreboard players operation #left wither.blast -= #timer wither.blast
scoreboard players operation #sec wither.blast = #timer wither.blast
scoreboard players operation #sec wither.blast %= #20 wither.blast

# WARNING
execute if score #timer wither.blast matches 1 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..200] ~ ~ ~ 6 0.5
execute if score #timer wither.blast matches 1 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.wither.spawn hostile @a[distance=..200] ~ ~ ~ 6 0.3
execute if score #timer wither.blast matches 1 at @e[type=marker,tag=death_blast,limit=1] run tellraw @a[distance=..200] {"text":"The Wither's core is going critical... RUN!","color":"dark_red","bold":true}
execute at @e[type=marker,tag=death_blast,limit=1] run title @a[distance=..200] actionbar {"text":"☠ RUN ☠","color":"dark_red","bold":true}

# CHARGE SOUND EVERY SECOND (pitch rises as it gets closer)
execute if score #sec wither.blast matches 0 if score #left wither.blast matches 61.. at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..200] ~ ~ ~ 6 0.6
execute if score #sec wither.blast matches 0 if score #left wither.blast matches 21..60 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..200] ~ ~ ~ 6 1.0
execute if score #sec wither.blast matches 0 if score #left wither.blast matches ..20 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..200] ~ ~ ~ 6 1.4
execute if score #left wither.blast matches 30 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..200] ~ ~ ~ 6 1.2

# CHARGE PARTICLES (energy getting pulled in, grows near the end)
execute if score #left wither.blast matches 51.. at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:portal ~ ~0.5 ~ 3 3 3 1 40 normal
execute if score #left wither.blast matches ..50 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:portal ~ ~0.5 ~ 6 6 6 2 120 normal
execute at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.4 0.4 0.4 0.02 8 normal
execute if score #left wither.blast matches ..50 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:squid_ink ~ ~0.5 ~ 0.6 0.6 0.6 0.05 15 normal
execute if score #left wither.blast matches ..15 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:electric_spark ~ ~0.5 ~ 1.5 1.5 1.5 0.5 40 force

# DETONATE OR LOOP
execute if score #left wither.blast matches ..0 run return run function wither:wither/lifecycle/death_blast/explode
execute if entity @e[type=marker,tag=death_blast] run schedule function wither:wither/lifecycle/death_blast/tick 1t
