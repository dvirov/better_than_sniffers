
data modify storage minecraft:temp item_name set from block ~ ~ ~ item.id
data modify storage minecraft:temp item_name set from block ~ ~ ~ item.components.minecraft:item_name
data modify storage minecraft:temp item_name set from block ~ ~ ~ item.components.minecraft:custom_name
data modify storage minecraft:temp item_name set string storage minecraft:temp item_name 10
tellraw @s [{translate:"block.storage_pot.contains",fallback:"Contains:"},{block:"~ ~ ~",nbt:"item.count "},{text:" "},{interpret:true,storage:"temp",nbt:"item_name"}]
data remove storage temp item_name

