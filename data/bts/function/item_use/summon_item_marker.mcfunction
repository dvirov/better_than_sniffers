say hello
#tag @s add blank_item
#data modify entity @s PickupDelay set value 2
data modify entity @s data set value {PickupDelay:2,Motion:[0.0,0.0,0.0],Tags:["blank_item"],Item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"air"}}}


tellraw @a {entity:"@s",nbt:""}
