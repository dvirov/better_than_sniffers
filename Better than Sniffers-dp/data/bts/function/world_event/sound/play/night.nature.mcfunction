
execute if score @s sound.ambiant.time matches 5.. run return 0
stopsound @s ambient
function bts:world_event/sound/stop/ambient.time
execute if score @s sound.ambiant.time matches 1.. run return 0
playsound bts:night.nature ambient @s ~ ~ ~
scoreboard players set @s sound.ambiant.time 1260

