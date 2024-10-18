
##super cold
#execute if score @s bar_temperature matches ..-50 run item modify entity @s enderchest.1 bts:custombars/temperature0
$execute if score @s bar_temperature matches ..-50 run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value "{\"text\":\"                      \\uE000\"}"

##cold
#execute if score @s bar_temperature matches -50..0 run item modify entity @s enderchest.1 bts:custombars/temperature1
$execute if score @s bar_temperature matches -50..0 run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value "{\"text\":\"                      \\uE001\"}"

##hote
#execute if score @s bar_temperature matches 0..50 run item modify entity @s enderchest.1 bts:custombars/temperature2
$execute if score @s bar_temperature matches 0..50 run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value "{\"text\":\"                      \\uE002\"}"

##super hot
#execute if score @s bar_temperature matches 50.. run item modify entity @s enderchest.1 bts:custombars/temperature3
$execute if score @s bar_temperature matches 50.. run data modify storage minecraft:$(UUID0)$(UUID1)$(UUID2)$(UUID3) temperature set value "{\"text\":\"                      \\uE003\"}"
