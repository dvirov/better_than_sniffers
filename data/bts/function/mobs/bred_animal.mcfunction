advancement revoke @s only bts:trigger/bred_animal

scoreboard players add .booltame bool 0

execute if score .booltame bool matches 0 run schedule function bts:mobs/bred_animal 1t
execute if score .booltame bool matches 0 run return run scoreboard players add .booltame bool 1

scoreboard players set .booltame bool 0

execute as @e[type=#bts:ai_neutral,nbt={Age:-24000}] at @s on passengers if entity @s[type=zombified_piglin] run function bts:mobs/ai_change_to_nutral

