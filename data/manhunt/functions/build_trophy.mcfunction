execute store success score is_forceloaded manhunt_info run forceload query 0 0
forceload add 0 0
setblock 0 200 0 minecraft:structure_block[mode=load]{mode:"LOAD", name:"manhunt:trophy"}
setblock 0 201 0 redstone_block
setblock 0 215 4 air
setblock 1 217 7 air
tp @e[tag=trophy_sheep,type=minecraft:sheep] 0 -5 0
execute if score Trophy_Sheep manhunt_settings matches 1.. run summon minecraft:sheep 2 208 5 {CustomName:'{"text":"jeb_"}', CustomNameVisible:0, Silent:1b, Tags:["trophy_sheep"]}
execute if score Trophy_Sheep manhunt_settings matches 1.. run summon minecraft:sheep 4 208 7 {CustomName:'{"text":"jeb_"}', CustomNameVisible:0, Silent:1b, Tags:["trophy_sheep"]}
execute if score Trophy_Sheep manhunt_settings matches 1.. run summon minecraft:sheep 5 208 3 {CustomName:'{"text":"jeb_"}', CustomNameVisible:0, Silent:1b, Tags:["trophy_sheep"]}
execute if score Trophy_Sheep manhunt_settings matches 1.. run scoreboard players set remove_forceload manhunt_info 1