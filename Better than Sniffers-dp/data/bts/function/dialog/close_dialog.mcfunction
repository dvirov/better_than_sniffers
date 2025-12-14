scoreboard players enable @s close.dialog

execute if score @s close.dialog matches 9999 run return run function bts:dialog/leave_bed
execute if score @s close.dialog matches 9000 run return run function bts:dialog/ponder_get_id

scoreboard players set @s close.dialog 0

execute if score @s sleep.dialog matches 1 run return run dialog show @s bts:sleep_menu

dialog clear @s


