# Saves the Fight Tuning dialog (called by its Save button)
# Dialog values arrive as text (sliders may send 600.0), so re-store them as clean ints / bytes
$data modify storage wither:temp tuning set value {wither_hp:$(wither_hp),antiburst:$(antiburst),blast_enabled:$(blast_enabled),blast_radius:$(blast_radius),blast_charge:$(blast_charge),enraged_noheal:$(enraged_noheal),heal_delay:$(heal_delay),charge_cooldown:$(charge_cooldown),homing_interval:$(homing_interval),homing_interval_enraged:$(homing_interval_enraged),skull_ring:$(skull_ring),ring_interval:$(ring_interval),spawn_interval:$(spawn_interval),spawn_interval_enraged:$(spawn_interval_enraged),swarm:$(swarm)}

execute store result storage wither:options wither_hp int 1 run data get storage wither:temp tuning.wither_hp
execute store result storage wither:options antiburst byte 1 run data get storage wither:temp tuning.antiburst
execute store result storage wither:options blast_enabled byte 1 run data get storage wither:temp tuning.blast_enabled
execute store result storage wither:options blast_radius int 1 run data get storage wither:temp tuning.blast_radius
execute store result storage wither:options blast_charge int 1 run data get storage wither:temp tuning.blast_charge
execute store result storage wither:options enraged_noheal byte 1 run data get storage wither:temp tuning.enraged_noheal
execute store result storage wither:options heal_delay int 1 run data get storage wither:temp tuning.heal_delay
execute store result storage wither:options charge_cooldown int 1 run data get storage wither:temp tuning.charge_cooldown
execute store result storage wither:options homing_interval int 1 run data get storage wither:temp tuning.homing_interval
execute store result storage wither:options homing_interval_enraged int 1 run data get storage wither:temp tuning.homing_interval_enraged
execute store result storage wither:options skull_ring byte 1 run data get storage wither:temp tuning.skull_ring
execute store result storage wither:options ring_interval int 1 run data get storage wither:temp tuning.ring_interval
execute store result storage wither:options spawn_interval int 1 run data get storage wither:temp tuning.spawn_interval
execute store result storage wither:options spawn_interval_enraged int 1 run data get storage wither:temp tuning.spawn_interval_enraged
execute store result storage wither:options swarm byte 1 run data get storage wither:temp tuning.swarm

data remove storage wither:temp tuning

tellraw @s ["",{text:"[Wither's Wrath] ",bold:true,color:"#322A32"},{text:"Fight settings saved!",color:"#13e800"}]
function wither:dialog/tuning
