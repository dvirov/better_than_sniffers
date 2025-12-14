effect clear @s regeneration

execute store result storage temp regen.duration int 0.05 run scoreboard players get @s regen.duration
execute store result storage temp regen.amplifier int 1 run scoreboard players get @s regen.amplifier
execute if score @s regen.amplifier matches ..0 run data modify storage temp regen.amplifier set value 0
execute if score @s regen.duration matches -1 run data modify storage temp regen.duration set value "infinite"

function bts:item_use/potions/effects/custom/restore_regen_macro with storage temp regen