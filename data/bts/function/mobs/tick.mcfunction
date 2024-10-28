
# Animals AI
execute if entity @s[type=#bts:ai_neutral,tag=!scanned] at @s run function bts:mobs/scan

execute if entity @s[type=#bts:ai_neutral,nbt={HurtTime:10s}] run function bts:mobs/attack

#execute if entity @s[type=#bts:ai_neutral,tag=scanned] if predicate bts:is_in_water run tag @s remove scanned

execute if entity @s[tag=ai,predicate=!bts:is_passanger] run function bts:mobs/silent_kill


# Slime Rain 
execute if entity @s[type=slime,tag=slimerain] run function bts:world_event/slimerain/timer
#execute if entity @s[type=slime,name=slime,nbt={Size:0}] run function bts:mobs/silent_kill

execute if entity @s[type=zombie,tag=!scanned] run function bts:mobs/miner_zombie
execute if entity @s[type=zombie,tag=scanned] at @s if items entity @s weapon iron_pickaxe run function bts:mobs/miner_zombie_mine

#execute if entity @s[tag=parkour] run scoreboard players add @s timer 1
#execute if entity @s[tag=parkour] if score @s timer matches 40 run kill @s



