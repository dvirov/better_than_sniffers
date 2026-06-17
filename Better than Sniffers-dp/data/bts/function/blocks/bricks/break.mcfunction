#execute unless entity @s[tag=has_brick] run return fail
execute if score @s timer matches 24000.. run loot spawn ~ ~ ~ loot bts:items/brick
execute if score @s timer matches ..24000 run loot spawn ~ ~ ~ loot bts:items/clay_ball