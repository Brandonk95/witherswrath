# Puts every Fight Tuning value back to its default
function wither:config/remove_tuning
function wither:config/defaults

tellraw @s ["",{text:"[Wither's Wrath] ",bold:true,color:"#322A32"},{text:"Fight settings reset to defaults.",color:"#e80f00"}]
function wither:dialog/tuning
