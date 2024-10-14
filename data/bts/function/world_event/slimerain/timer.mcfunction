scoreboard players add @s timer 1
execute if score @s timer matches 30.. if predicate bts:word_event/rng0.01 run item modify entity @s armor.chest bts:delete_item

execute if score @s timer matches 1000 run data modify entity @s DeathLootTable set value "minecraft:empty"
execute if score @s timer matches 1000 run tp @s ~ -100 ~
execute if score @s timer matches 1000 run kill @s
