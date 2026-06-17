#say damage general

execute unless score @s Body matches ..0 run return run function bts:world_event/health/damage/damage_body
execute unless score @s L.arm matches ..0 unless score @s R.arm matches ..0 run return run function bts:world_event/health/damage/damage_arm
execute unless score @s L.leg matches ..0 unless score @s R.leg matches ..0 run return run function bts:world_event/health/damage/damage_leg
execute unless score @s Head matches ..0 run return run function bts:world_event/health/damage/damage_head



tellraw @a {color:"dark_red", text: " damage general critical error please report !"}