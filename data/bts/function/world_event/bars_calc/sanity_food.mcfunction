#trigger from advancements
execute store result score rng values run random value 1..4
execute if score rng values matches 1 if score @s eat.raw.meat matches 1.. run scoreboard players remove @s eat.raw.meat 1
execute if score rng values matches 2 if score @s eat.cooked.meat matches 1.. run scoreboard players remove @s eat.cooked.meat 1
execute if score rng values matches 3 if score @s eat.vegetables matches 1.. run scoreboard players remove @s eat.vegetables 1
execute if score rng values matches 4 if score @s eat.raw.meat matches 1.. run scoreboard players remove @s eat.fruit 1

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

execute if score @s eat.raw.meat matches ..-1 run scoreboard players set @s eat.raw.meat 0
execute if score @s eat.raw.meat matches 7.. run scoreboard players set @s eat.raw.meat 6

execute if score @s eat.cooked.meat matches ..-1 run scoreboard players set @s eat.cooked.meat 0
execute if score @s eat.cooked.meat matches 21.. run scoreboard players set @s eat.cooked.meat 20

execute if score @s eat.vegetables matches ..-1 run scoreboard players set @s eat.vegetables 0
execute if score @s eat.vegetables matches 16.. run scoreboard players set @s eat.vegetables 15

execute if score @s eat.fruit matches ..-1 run scoreboard players set @s eat.fruit 0
execute if score @s eat.fruit matches 18.. run scoreboard players set @s eat.fruit 17



