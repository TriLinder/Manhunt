tag @e[nbt={Item:{tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}}}, type=item, limit=1, sort=nearest, distance=..3] add return
tp @e[tag=return, distance=..3] @s
data modify entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}}}] PickupDelay set value 0