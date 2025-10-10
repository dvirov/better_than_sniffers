# shows the health images in the action bar 
## depends on show bars function to run and show



execute if score @s Head matches ..0 run data modify storage bts:bars head_hp set value "  \uBBA3\uF8A1"
execute if score @s Head matches 1 run data modify storage bts:bars head_hp set value "  \uBBA2\uF8A1"
execute if score @s Head matches 2..3 run data modify storage bts:bars head_hp set value "  \uBBA1\uF8A1"
execute if score @s Head matches 4.. run data modify storage bts:bars head_hp set value "  \uBBA0\uF8A1"

execute if score @s L.arm matches ..0 run data modify storage bts:bars l_arm_hp set value "\uF807\uF808\uBBC3"
execute if score @s L.arm matches 1 run data modify storage bts:bars l_arm_hp set value "\uF807\uF808\uBBC2"
execute if score @s L.arm matches 2.. run data modify storage bts:bars l_arm_hp set value "\uF807\uF808\uBBC0"

execute if score @s Body matches ..0 run data modify storage bts:bars body_hp set value "\uF801\uBBB3"
execute if score @s Body matches 1..2 run data modify storage bts:bars body_hp set value "\uF801\uBBB2"
execute if score @s Body matches 3..5 run data modify storage bts:bars body_hp set value "\uF801\uBBB1"
execute if score @s Body matches 6.. run data modify storage bts:bars body_hp set value "\uF801\uBBB0"

execute if score @s R.arm matches ..0 run data modify storage bts:bars r_arm_hp set value "\uF801\uBBC3"
execute if score @s R.arm matches 1 run data modify storage bts:bars r_arm_hp set value "\uF801\uBBC2"
execute if score @s R.arm matches 2.. run data modify storage bts:bars r_arm_hp set value "\uF801\uBBC0"

execute if score @s L.leg matches ..0 run data modify storage bts:bars l_leg_hp set value "\uF803\uF805\uF808\uBBD3"
execute if score @s L.leg matches 1 run data modify storage bts:bars l_leg_hp set value "\uF803\uF805\uF808\uBBD2"
execute if score @s L.leg matches 2 run data modify storage bts:bars l_leg_hp set value "\uF803\uF805\uF808\uBBD1"
execute if score @s L.leg matches 3.. run data modify storage bts:bars l_leg_hp set value "\uF803\uF805\uF808\uBBD0"

execute if score @s R.leg matches ..0 run data modify storage bts:bars r_leg_hp set value "\uF801\uBBD3"
execute if score @s R.leg matches 1 run data modify storage bts:bars r_leg_hp set value "\uF801\uBBD2"
execute if score @s R.leg matches 2 run data modify storage bts:bars r_leg_hp set value "\uF801\uBBD1"
execute if score @s R.leg matches 3.. run data modify storage bts:bars r_leg_hp set value "\uF801\uBBD0"

