advancement revoke @s only bts:trigger/weaving
execute if items entity @s weapon.mainhand phantom_membrane[item_name='"Weave"'] run item modify entity @s weapon.mainhand bts:weaving
execute if items entity @s weapon.offhand phantom_membrane[item_name='"Weave"'] run item modify entity @s weapon.offhand bts:weaving

execute if items entity @s weapon.mainhand phantom_membrane[item_name='"Weave"',damage=0] run item replace entity @s weapon.mainhand with white_carpet
execute if items entity @s weapon.offhand phantom_membrane[item_name='"Weave"',damage=0] run item replace entity @s weapon.offhand with white_carpet
