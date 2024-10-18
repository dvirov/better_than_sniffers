attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.jump_strength base set 0.369
attribute @s minecraft:player.block_break_speed base set 0.5
#effect give @s hunger infinite 0 true
#item replace entity @p enderchest.0 with apple 1
#item replace entity @p enderchest.1 with apple 1
#item replace entity @p enderchest.2 with apple 1
scoreboard players set @s bar_sanity_calc 2090
scoreboard players set @s bar_temperature 1
scoreboard players set @s bar_stamina 21
scoreboard players add @s anvil.cd 0

recipe give @s *


#say new player 1
data modify storage bts:main temp set from entity @s UUID
data modify storage bts:main args.UUID0 set from storage bts:main temp[0]
data modify storage bts:main args.UUID1 set from storage bts:main temp[1]
data modify storage bts:main args.UUID2 set from storage bts:main temp[2]
data modify storage bts:main args.UUID3 set from storage bts:main temp[3]

function bts:misc/create_storage with storage bts:main args

#say new player 2
#data modify storage newplayer temp.uuid set from entity @s UUID
#function bts:misc/create_storage with storage minecraft:newplayer temp