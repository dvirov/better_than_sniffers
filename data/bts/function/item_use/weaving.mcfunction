advancement revoke @s only bts:trigger/weaving
item modify entity dvirov weapon.mainhand bts:weaving
execute if entity @s[nbt={SelectedItem:{id:"minecraft:phantom_membrane",count:1,components:{"minecraft:item_name":'"Weave"',"minecraft:damage":0}}}] run item modify entity @s weapon.mainhand bts:carpet
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_carpet",count:1,components:{"minecraft:item_name":'"Weave"',"minecraft:damage":0}}}] run item modify entity @s weapon.mainhand bts:carpet2
