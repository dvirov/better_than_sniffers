
#execute if score @s current.health <= @s previous.health run return 0


#execute if score @s current.health <= @s previous.health run return 0
execute unless score @s healing matches 1.. run return 0
tellraw @a [{color:"aqua" ,score:{name:"@s", objective:"healing"}},{text:" healing points at general heal"}]

execute unless score @s Head matches 4.. run return run function bts:world_event/health/heal/head
execute unless score @s L.leg matches 3.. run return run function bts:world_event/health/heal/l_leg
execute unless score @s R.leg matches 3.. run return run function bts:world_event/health/heal/r_leg
execute unless score @s L.arm matches 2.. run return run function bts:world_event/health/heal/l_arm
execute unless score @s R.arm matches 2.. run return run function bts:world_event/health/heal/r_arm
execute unless score @s Body matches 6.. run return run function bts:world_event/health/heal/body




# execute unless score @s Head matches 4.. run return run function bts:world_event/health/heal/heal_head
# execute unless predicate bts:health/legs_full_hp run return run function bts:world_event/health/heal/heal_leg
# execute unless predicate bts:health/arms_full_hp run return run function bts:world_event/health/heal/heal_arm
# execute unless score @s Body matches 6.. run return run function bts:world_event/health/heal/heal_body


#execute unless score @s current.health = @s previous.health run return run function bts:world_event/health/heal/heal_general

tellraw @a {color:"dark_red", text: "heal general critical error please report !"}
