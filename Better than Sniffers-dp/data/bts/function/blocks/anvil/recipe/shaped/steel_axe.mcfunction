scoreboard players set @s anvil.hit 0
playsound block.anvil.use block @a[distance=..6] ~ ~ ~

item modify block ~ ~ ~ container.3 bts:delete_item
item modify block ~ ~ ~ container.4 bts:delete_item
item modify block ~ ~ ~ container.5 bts:delete_item
item modify block ~ ~ ~ container.12 bts:delete_item
item modify block ~ ~ ~ container.13 bts:delete_item
item modify block ~ ~ ~ container.14 bts:delete_item
item modify block ~ ~ ~ container.21 bts:delete_item
item modify block ~ ~ ~ container.22 bts:delete_item
item modify block ~ ~ ~ container.23 bts:delete_item

loot spawn ~ ~.2 ~ loot bts:items/steel_axe