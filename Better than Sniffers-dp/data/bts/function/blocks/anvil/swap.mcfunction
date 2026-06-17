advancement revoke @s only bts:trigger/anvil_template_swap

execute unless score @s anvil.cd matches ..0 run return fail
#
tag @s add this
execute as @e[type=interaction,distance=..6,tag=anvil] run function bts:blocks/anvil/find_player
#
scoreboard players set @s anvil.cd 2
tag @s remove this
