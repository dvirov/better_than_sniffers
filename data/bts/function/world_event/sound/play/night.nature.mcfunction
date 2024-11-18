
execute if score @s ambiant.time matches 5.. run return 0
stopsound @s ambient
function bts:world_event/sound/stop/ambient.time
execute if score @s ambiant.time matches 1.. run return 0
playsound bts:night.nature ambient @s ~ ~ ~ 30
scoreboard players set @s ambiant.time 1260

