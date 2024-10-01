advancement revoke @s only bts:trigger/anvil_use
execute unless score @s anvil.cd matches ..0 run return fail

tag @s add this
execute as @e[type=interaction,distance=..6] run function bts:blocks/anvil/find_attacked

scoreboard players set @s anvil.cd 30
tag @s remove this
say hit