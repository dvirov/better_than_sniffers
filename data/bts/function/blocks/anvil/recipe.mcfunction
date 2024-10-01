playsound block.anvil.place block @a[distance=..6] ~ ~ ~

execute if items entity @s weapon *[minecraft:custom_data~{anvil_recipe:1b}] run function bts:blocks/anvil/recipe/test

#effect give @s glowing 1 1 true
