# Queues the next homing skull (homing_interval / homing_interval_enraged from Fight Tuning)
$execute unless score enraged wenraged matches 1 run schedule function wither:wither/phase1/homing/homingpre $(homing_interval)s
$execute if score enraged wenraged matches 1 run schedule function wither:wither/phase1/homing/homingpre $(homing_interval_enraged)s
