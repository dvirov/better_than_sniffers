#trigger from advancements

execute as @s[advancements={bts:trigger/sanity/eating_raw_meat=true}] run scoreboard players add @s eat.raw.meat 1
execute as @s[advancements={bts:trigger/sanity/eating_cooked_meat=true}] run scoreboard players add @s eat.cooked.meat 1
execute as @s[advancements={bts:trigger/sanity/eating_vegetables=true}] run scoreboard players add @s eat.vegetables 1
execute as @s[advancements={bts:trigger/sanity/eating_fruits=true}] run scoreboard players add @s eat.fruit 1

advancement revoke @s only bts:trigger/sanity/eating_raw_meat
advancement revoke @s only bts:trigger/sanity/eating_cooked_meat
advancement revoke @s only bts:trigger/sanity/eating_vegetables
advancement revoke @s only bts:trigger/sanity/eating_fruits



execute if score @s eat.raw.meat matches 6.. run scoreboard players remove @s bar_sanity_calc 5
execute if score @s eat.cooked.meat matches 15.. run scoreboard players remove @s bar_sanity_calc 11
execute if score @s eat.vegetables matches 20.. run scoreboard players remove @s bar_sanity_calc 3
execute if score @s eat.fruit matches 20.. run scoreboard players remove @s bar_sanity_calc 2

