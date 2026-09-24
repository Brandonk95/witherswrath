# Fight Tuning defaults (Brandon's edit)
# Only fills in values that are missing, so saved settings survive updates/reloads
# Numbers are ints, switches are bytes (1b = on, 0b = off)

# Wither
execute unless data storage wither:options wither_hp run data modify storage wither:options wither_hp set value 600
execute unless data storage wither:options antiburst run data modify storage wither:options antiburst set value 1b

# Death blast
execute unless data storage wither:options blast_enabled run data modify storage wither:options blast_enabled set value 1b
execute unless data storage wither:options blast_radius run data modify storage wither:options blast_radius set value 60
execute unless data storage wither:options blast_charge run data modify storage wither:options blast_charge set value 5

# Enraged healing
execute unless data storage wither:options enraged_noheal run data modify storage wither:options enraged_noheal set value 1b
execute unless data storage wither:options heal_delay run data modify storage wither:options heal_delay set value 5

# Attacks (seconds)
execute unless data storage wither:options charge_cooldown run data modify storage wither:options charge_cooldown set value 20
execute unless data storage wither:options homing_interval run data modify storage wither:options homing_interval set value 20
execute unless data storage wither:options homing_interval_enraged run data modify storage wither:options homing_interval_enraged set value 10
execute unless data storage wither:options skull_ring run data modify storage wither:options skull_ring set value 1b
execute unless data storage wither:options ring_interval run data modify storage wither:options ring_interval set value 5

# Minions (seconds)
execute unless data storage wither:options spawn_interval run data modify storage wither:options spawn_interval set value 10
execute unless data storage wither:options spawn_interval_enraged run data modify storage wither:options spawn_interval_enraged set value 5
execute unless data storage wither:options swarm run data modify storage wither:options swarm set value 1b
