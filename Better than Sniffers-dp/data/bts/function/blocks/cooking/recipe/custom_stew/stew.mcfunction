$execute unless items block ~ ~ ~ container.16 * run item replace block ~ ~ ~ container.16 with rabbit_stew[food={nutrition:$(nutrition),saturation:$(saturation) },lore=[{color:gray,italic:false,translate:"item.cooking.ingredients",fallback:"ingredients:"},\
{color:green,italic:false,translate:"item.cooking.name.$(name1)",fallback:"$(name1)"},{color:green,italic:false,translate:"item.cooking.name.$(name2)",fallback:"$(name2)"},\
{color:green,italic:false,translate:"item.cooking.name.$(name3)",fallback:"$(name3)"},{color:green,italic:false,translate:"item.cooking.name.$(name4)",fallback:"$(name4)"},{color:green,italic:false,translate:"item.cooking.name.$(name5)",fallback:"$(name5)"},\
{color:green,italic:false,translate:"item.cooking.name.$(name6)",fallback:"$(name6)"}],item_name=[{"translate":"item.cooking.name.$(name1)",fallback:"$(name1)"}," ",{"translate":"item.cooking.stew",fallback:"Stew"}], custom_data={"tag":"cooked_food"}]

# $say $(saturation) $(nutrition) $(name1) $(name2) $(name3) $(name4) $(name5) $(name6)
