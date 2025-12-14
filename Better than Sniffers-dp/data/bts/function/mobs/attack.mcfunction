execute on vehicle run effect give @s speed 20 3
#execute if entity @s[type=sniffer] on vehicle run attribute @s entity_interaction_range modifier add 1 2 add_value
data modify entity @s AngerTime set value 100
data modify entity @s AngryAt set from entity @p UUID
attribute @s follow_range base set 15
tag @s add hurt_animal 
scoreboard players set @s timer 400