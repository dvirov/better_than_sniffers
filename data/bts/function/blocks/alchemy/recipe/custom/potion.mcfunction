#$say $(time2) $(time3)
$item replace block ~ ~ ~ container.22 with potion[tooltip_display={hidden_components:["potion_contents"]},custom_name={text:"$(name1) Potion",italic:false},lore=[\
[{color:$(color1),italic:false,"text":"$(name1) ($(seconds1)s)"}],\
[{color:$(color2),italic:false,"text":"$(name2) $(time2)"}],\
[{color:$(color3),italic:false,"text":"$(name3) $(time3)"}]],\
custom_data={\
potion_contents:{effect1:"$(effect1)",effect2:"$(effect2)",effect3:"$(effect3)",seconds1:$(seconds1)I ,seconds2:$(seconds2)I ,seconds3:$(seconds3)I }}]

#$say $(effect1) $(seconds1) $(effect2) $(seconds2) $(effect3) $(seconds3) $(color1) $(color2) $(color3)

