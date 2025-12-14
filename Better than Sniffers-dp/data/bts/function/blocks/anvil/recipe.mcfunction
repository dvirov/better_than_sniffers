playsound block.anvil.place block @a[distance=..6] ~ ~ ~

execute as @n[type=interaction,distance=..0.5,tag=anvil_main] run scoreboard players add @s anvil.hit 1
scoreboard players operation @s anvil.hit = @n[type=interaction,distance=..0.5,tag=anvil_main] anvil.hit
execute as @p[tag=this] if predicate bts:world_event/rng0.1 run function bts:item_use/item_damage

# template
#execute if score @s anvil.hit matches 6.. \
        if items block ~ ~ ~ container.3 * \
        if items block ~ ~ ~ container.4 * \
        if items block ~ ~ ~ container.5 * \
        \
        if items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 * \
        if items block ~ ~ ~ container.14 * \
        \
        if items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 * \
        if items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_axe

#steel pickaxe 
execute if score @s anvil.hit matches 6.. \
        if items block ~ ~ ~ container.3 *[minecraft:custom_data~{id:"steel_ingot"}] \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        if items block ~ ~ ~ container.5 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 stick \
        unless items block ~ ~ ~ container.14 * \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_pickaxe

#steel axe right 
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        if items block ~ ~ ~ container.5 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 stick \
        if items block ~ ~ ~ container.14 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_axe
#steel axe left 
execute if score @s anvil.hit matches 6.. \
        if items block ~ ~ ~ container.3 *[minecraft:custom_data~{id:"steel_ingot"}] \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.5 * \
        if items block ~ ~ ~ container.12 *[minecraft:custom_data~{id:"steel_ingot"}] \
        if items block ~ ~ ~ container.13 stick \
        unless items block ~ ~ ~ container.14 * \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_axe

#steel hoe right 
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        if items block ~ ~ ~ container.5 *[minecraft:custom_data~{id:"steel_ingot"}] \
        \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 stick \
        unless items block ~ ~ ~ container.14 * \
        \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_hoe

#steel hoe left 
execute if score @s anvil.hit matches 6.. \
        if items block ~ ~ ~ container.3 *[minecraft:custom_data~{id:"steel_ingot"}] \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.5 * \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 stick \
        unless items block ~ ~ ~ container.14 * \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_hoe

#steel sword left
execute if score @s anvil.hit matches 6.. \
        if items block ~ ~ ~ container.3 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.4 * \
        unless items block ~ ~ ~ container.5 * \
        \
        if items block ~ ~ ~ container.12 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.13 * \
        unless items block ~ ~ ~ container.14 * \
        \
        if items block ~ ~ ~ container.21 stick \
        unless items block ~ ~ ~ container.22 * \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_sword

#steel sword mid
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.5 * \
        \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.14 * \
        \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_sword

#steel sword right
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        if items block ~ ~ ~ container.5 *[minecraft:custom_data~{id:"steel_ingot"}] \
        \
        unless items block ~ ~ ~ container.12 * \
        unless items block ~ ~ ~ container.13 * \
        if items block ~ ~ ~ container.14 *[minecraft:custom_data~{id:"steel_ingot"}] \
        \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        if items block ~ ~ ~ container.23 stick \
        run function bts:blocks/anvil/recipe/shaped/steel_sword

#steel shovel left
execute if score @s anvil.hit matches 6.. \
        if items block ~ ~ ~ container.3 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.4 * \
        unless items block ~ ~ ~ container.5 * \
        \
        if items block ~ ~ ~ container.12 stick \
        unless items block ~ ~ ~ container.13 * \
        unless items block ~ ~ ~ container.14 * \
        \
        if items block ~ ~ ~ container.21 stick \
        unless items block ~ ~ ~ container.22 * \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_shovel

#steel shovel mid
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.5 * \
        \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 stick \
        unless items block ~ ~ ~ container.14 * \
        \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_shovel

#steel shovel right
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        if items block ~ ~ ~ container.5 *[minecraft:custom_data~{id:"steel_ingot"}] \
        \
        unless items block ~ ~ ~ container.12 * \
        unless items block ~ ~ ~ container.13 * \
        if items block ~ ~ ~ container.14 stick \
        \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        if items block ~ ~ ~ container.23 stick \
        run function bts:blocks/anvil/recipe/shaped/steel_shovel

# steel knife top left
execute if score @s anvil.hit matches 6.. \
        if items block ~ ~ ~ container.3 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.4 * \
        unless items block ~ ~ ~ container.5 * \
        \
        if items block ~ ~ ~ container.12 stick \
        unless items block ~ ~ ~ container.13 * \
        unless items block ~ ~ ~ container.14 * \
        \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_knife

# steel knife top mid
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        if items block ~ ~ ~ container.4 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.5 * \
        \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 stick \
        unless items block ~ ~ ~ container.14 * \
        \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_knife

# steel knife top right
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        if items block ~ ~ ~ container.5 *[minecraft:custom_data~{id:"steel_ingot"}] \
        \
        unless items block ~ ~ ~ container.12 * \
        unless items block ~ ~ ~ container.13 * \
        if items block ~ ~ ~ container.14 stick \
        \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_knife

# steel knife bottom left
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        unless items block ~ ~ ~ container.5 * \
        \
        if items block ~ ~ ~ container.12 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.13 * \
        unless items block ~ ~ ~ container.14 * \
        \
        if items block ~ ~ ~ container.21 stick \
        unless items block ~ ~ ~ container.22 * \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_knife

# steel knife bottom mid
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        unless items block ~ ~ ~ container.5 * \
        \
        unless items block ~ ~ ~ container.12 * \
        if items block ~ ~ ~ container.13 *[minecraft:custom_data~{id:"steel_ingot"}] \
        unless items block ~ ~ ~ container.14 * \
        \
        unless items block ~ ~ ~ container.21 * \
        if items block ~ ~ ~ container.22 stick \
        unless items block ~ ~ ~ container.23 * \
        run function bts:blocks/anvil/recipe/shaped/steel_knife

# steel knife bottom right
execute if score @s anvil.hit matches 6.. \
        unless items block ~ ~ ~ container.3 * \
        unless items block ~ ~ ~ container.4 * \
        unless items block ~ ~ ~ container.5 * \
        \
        unless items block ~ ~ ~ container.12 * \
        unless items block ~ ~ ~ container.13 * \
        if items block ~ ~ ~ container.14 *[minecraft:custom_data~{id:"steel_ingot"}] \
        \
        unless items block ~ ~ ~ container.21 * \
        unless items block ~ ~ ~ container.22 * \
        if items block ~ ~ ~ container.23 stick \
        run function bts:blocks/anvil/recipe/shaped/steel_knife











