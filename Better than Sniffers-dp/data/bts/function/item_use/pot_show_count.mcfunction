tag @s add custom_block
tag @s add pot_display

data merge entity @s {billboard:"vertical" ,transformation:{left_rotation:[0f,0f,0f,0.1f],right_rotation:[0f,0f,0f,0.1f],translation:[0f,1.05f,0f],scale:[1.3f,1.3f,1.3f]}}
data modify entity @s text set value [{color:"white",nbt:"item.count",block:"~ ~ ~"}]
data modify entity @s text.extra.[{}].color set value white
scoreboard players set @s countdown 60
