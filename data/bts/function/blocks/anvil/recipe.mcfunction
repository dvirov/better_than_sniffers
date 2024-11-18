playsound block.anvil.place block @a[distance=..6] ~ ~ ~
scoreboard players add @s anvil.hit 1

execute if items entity @s weapon *[minecraft:custom_data~{anvil_recipe:1b}] run function bts:blocks/anvil/recipe/test
execute if items entity @s weapon *[minecraft:custom_data~{steel_ingot:1b}] run function bts:blocks/anvil/recipe/steel

#effect give @s glowing 1 1 true

