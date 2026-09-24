# Opens the Fight Tuning dialog with the current values filled in
# The Save template is passed in as a string so the macro doesn't eat its $(...) placeholders
function wither:config/defaults
data modify storage wither:temp dialog set from storage wither:options
data modify storage wither:temp dialog.template set value "function wither:config/apply {wither_hp:$(wither_hp),antiburst:$(antiburst),blast_enabled:$(blast_enabled),blast_radius:$(blast_radius),blast_charge:$(blast_charge),enraged_noheal:$(enraged_noheal),heal_delay:$(heal_delay),charge_cooldown:$(charge_cooldown),homing_interval:$(homing_interval),homing_interval_enraged:$(homing_interval_enraged),skull_ring:$(skull_ring),ring_interval:$(ring_interval),spawn_interval:$(spawn_interval),spawn_interval_enraged:$(spawn_interval_enraged),swarm:$(swarm)}"
function wither:dialog/tuning_show with storage wither:temp dialog
data remove storage wither:temp dialog
