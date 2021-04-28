execute store success score is_forceloaded2 manhunt_info run forceload query -14 5
forceload add -14 5
setblock -16 207 2 minecraft:structure_block[mode=load]{mode:"LOAD", name:"manhunt:observatory"}
setblock -16 208 2 redstone_block
setblock -13 209 8 minecraft:potted_cactus
execute unless score Trophy_Parrot manhunt_settings matches 1.. run setblock -13 209 2 minecraft:potted_cactus
tp @e[tag=trophy_parrot,type=parrot] 0 -5 0
kill @e[tag=trophy_parrot,type=parrot]
execute if score Trophy_Parrot manhunt_settings matches 1.. run summon minecraft:parrot -13 209 2 {Owner:Notch,Sitting:1b,NoAI:1b, Tags:["trophy_parrot"]}
#summon minecraft:parrot -13 209 8 {Owner:Notch,Sitting:1b,NoAI:1b,Rotation:[180.0f, 0.0f], Tags:["trophy_parrot"]}
scoreboard players set remove_forceload manhunt_info 1