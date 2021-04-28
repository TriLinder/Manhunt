schedule function manhunt:one_second 1s

function manhunt:check_others_active

clear @a[tag=!hunter] minecraft:compass{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}
clear @a[tag=!hunter] minecraft:carrot_on_a_stick{display:{Name:'{"text":"Give Compass","bold":true,"color":"red"}'}}
execute as @e[type=item, tag=!return] run execute if entity @s[nbt={Item:{tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}}}] run kill @s

scoreboard players remove @a[tag=requesting_manhunt] manhunt_info 1
scoreboard players remove @a[tag=manhunt_winner] manhunt_info 1
scoreboard players remove @e[tag=frozen] manhunt_settings 1

execute as @a[tag=manhunt_winner] at @s run summon firework_rocket ~ ~ ~ {LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;11743532],FadeColors:[I;4312372]}],Flight:2}}}}

tag @a[tag=manhunt_winner, scores={manhunt_info=..0}] remove manhunt_winner

effect give @a[tag=frozen] slowness 1 255 true
effect give @a[tag=frozen] instant_health 1 255 true
effect give @a[tag=frozen] resistance 1 255 true
effect give @a[tag=frozen] saturation 1 255 true
effect give @a[tag=frozen] weakness 1 255 true
effect give @a[tag=frozen] mining_fatigue 1 255 true
execute as @e[tag=frozen, scores={manhunt_settings=..0}, type=armor_stand] run kill @s[tag=armor_frozen]
tag @a[tag=frozen, scores={manhunt_settings=..0}] remove frozen

execute if score remove_forceload manhunt_info matches 1.. run execute if score is_forceloaded manhunt_info matches 0 run forceload remove 0 0
execute if score remove_forceload manhunt_info matches 1.. run execute if score is_forceloaded2 manhunt_info matches 0 run forceload remove -14 5
execute if score remove_forceload manhunt_info matches 1.. run scoreboard players reset is_forceloaded manhunt_info
execute if score remove_forceload manhunt_info matches 1.. run scoreboard players reset is_forceloaded2 manhunt_info
execute if score remove_forceload manhunt_info matches 1.. run scoreboard players reset remove_forceload manhunt_info

execute as @a[tag=hunted] at @s run spawnpoint @s ~ ~ ~