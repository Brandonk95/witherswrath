# Queues the next wither skeleton spawn (spawn_interval / spawn_interval_enraged from Fight Tuning)
$execute if score enraged wenraged matches 1 run schedule function wither:wither/passive/spawn $(spawn_interval_enraged)s
$execute unless score enraged wenraged matches 1 run schedule function wither:wither/passive/spawn $(spawn_interval)s
