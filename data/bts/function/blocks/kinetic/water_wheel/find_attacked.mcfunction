scoreboard players set boolint bool 0
execute on attacker store result score boolint bool if entity @s[tag=this]
execute if score boolint bool matches 1 at @s as @e[type=armor_stand,distance=..0.9,tag=custom_block,tag=anvil] run function bts:blocks/anvil/recipe
execute if score boolint bool matches 1 run data remove entity @s attack
