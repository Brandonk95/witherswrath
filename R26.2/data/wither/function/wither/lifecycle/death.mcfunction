advancement revoke @s only wither:wither/defeated_wither

schedule function wither:nether_star/main 1t
execute if data storage wither:options {toggleanimation:Default} if data storage wither:options {blast_enabled:1b} run schedule function wither:wither/lifecycle/death_blast/start 1t

schedule function wither:wither/lifecycle/cleanup 5t

