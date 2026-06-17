advancement revoke @s only bts:trigger/weaving
say trigger
execute if items entity @s weapon.mainhand phantom_membrane[minecraft:custom_data~{"id":"weaving"}] run item modify entity @s weapon.mainhand bts:weaving
execute if items entity @s weapon.offhand phantom_membrane[minecraft:custom_data~{"id":"weaving"}] run item modify entity @s weapon.offhand bts:weaving

execute if items entity @s weapon.mainhand phantom_membrane[minecraft:custom_data~{"id":"weaving"},damage=0] run item replace entity @s weapon.mainhand with white_carpet
execute if items entity @s weapon.offhand phantom_membrane[minecraft:custom_data~{"id":"weaving"},damage=0] run item replace entity @s weapon.offhand with white_carpet
