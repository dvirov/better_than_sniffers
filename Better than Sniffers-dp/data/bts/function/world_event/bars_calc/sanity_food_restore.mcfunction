#trigger with sunrise from misc/player_tick

scoreboard players remove @s eat.raw.meat 1
scoreboard players remove @s eat.cooked.meat 1
scoreboard players remove @s eat.vegetables 1
scoreboard players remove @s eat.fruit 1



execute if score @s eat.raw.meat matches ..0 run scoreboard players set @s eat.raw.meat 0
execute if score @s eat.cooked.meat matches ..0 run scoreboard players set @s eat.cooked.meat 0
execute if score @s eat.vegetables matches ..0 run scoreboard players set @s eat.vegetables 0
execute if score @s eat.fruit matches ..0 run scoreboard players set @s eat.fruit 0
