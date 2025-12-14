scoreboard players set boolint bool 0
execute on target store result score boolint bool if entity @s[tag=this]
execute if score boolint bool matches 1 on passengers run function bts:blocks/anvil/menu
execute if score boolint bool matches 1 on passengers store result storage temp int int 1 run scoreboard players get @s values
execute if score boolint bool matches 1 at @s as @e[type=armor_stand,distance=..0.9,tag=custom_block,tag=anvil] store result score @s values run data get storage temp int
execute if score boolint bool matches 1 run data remove entity @s interaction
