#$say $(time2) $(time3)
$item replace block ~ ~ ~ container.22 with potion[tooltip_display={hidden_components:["potion_contents"]},custom_name=[{italic:false,translate:"item.alchemy.effect.name.$(name1)",fallback:"$(name1)"}," ",{translate:"item.alchemy.potion",fallback:"Potion"}],lore=[\
[{color:$(color1),italic:false,"translate":"item.alchemy.effect.name.$(name1)",fallback:"$(name1)"}," ",{color:$(color1),italic:false,"text":"($(seconds1)s)"}],\
[{color:$(color2),italic:false,"translate":"item.alchemy.effect.name.$(name2)",fallback:"$(name2)"}," ",{color:$(color2),italic:false,"text":"($(seconds2)s)"}],\
[{color:$(color3),italic:false,"translate":"item.alchemy.effect.name.$(name3)",fallback:"$(name3)"}," ",{color:$(color3),italic:false,"text":"($(seconds3)s)"}]],\
custom_data={\
potion_contents:{effect1:"$(effect1)",effect2:"$(effect2)",effect3:"$(effect3)",seconds1:$(seconds1)I ,seconds2:$(seconds2)I ,seconds3:$(seconds3)I }}]

#$say $(effect1) $(seconds1) $(effect2) $(seconds2) $(effect3) $(seconds3) $(color1) $(color2) $(color3)

