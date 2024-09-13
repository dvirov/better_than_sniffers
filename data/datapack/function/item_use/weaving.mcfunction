advancement revoke @s only datapack:trigger/weaving
item modify entity dvirov weapon.mainhand datapack:weaving
execute if entity @s[nbt={SelectedItem:{id:"minecraft:phantom_membrane",count:1,components:{"minecraft:item_name":'"Weave"',"minecraft:damage":0}}}] run item modify entity @s weapon.mainhand datapack:carpet
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_carpet",count:1,components:{"minecraft:item_name":'"Weave"',"minecraft:damage":0}}}] run item modify entity @s weapon.mainhand datapack:carpet2
