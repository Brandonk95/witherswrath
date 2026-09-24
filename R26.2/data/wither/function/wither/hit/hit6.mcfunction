# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit6_wither


execute as @e[type=wither,scores={Health=..150}] if data storage wither:options {toggleanimation:Default} if data storage wither:options {swarm:1b} at @s run function wither:wither/phase2/swarm
# Swarm turned off: still clear the tag so this doesn't keep re-running
execute as @e[type=wither,scores={Health=..150}] unless data storage wither:options {swarm:1b} run tag @s remove Swarm
