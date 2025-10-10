scoreboard players set boolint bool 0

execute on target store result score boolint bool if entity @s[tag=this]

execute if score boolint bool matches 1 run function bts:blocks/bricks/add_brick

#execute if score boolint bool matches 1 at @s store result score @s values run data get storage temp int
execute if score boolint bool matches 1 run data remove entity @s interaction
