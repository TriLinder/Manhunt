execute as @e[tag=hunted,limit=1,sort=nearest] at @s run setblock ~ -64 ~ lodestone
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass", Count:1b, tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}, LodestoneTracked:1b, LodestonePos:{X:0, Y:-64, Z:0}, LodestoneDimension:"minecraft:overworld"}}, PickupDelay:100s}
execute store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}}}] Item.tag.LodestonePos.X int 1 run data get entity @e[tag=hunted,limit=1,sort=nearest] Pos[0]
execute store result entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}}}] Item.tag.LodestonePos.Z int 1 run data get entity @e[tag=hunted,limit=1,sort=nearest] Pos[2]
data modify entity @e[type=item,limit=1,distance=..3,sort=nearest,nbt={Item:{tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}}}] PickupDelay set value 0
clear @s minecraft:compass{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}

execute if score Notify_Runner manhunt_settings matches 1.. run function manhunt:notify_runner