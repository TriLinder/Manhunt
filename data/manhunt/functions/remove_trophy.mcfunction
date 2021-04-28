gamerule doTileDrops false
execute store success score is_forceloaded manhunt_info run forceload query 0 0
forceload add 0 0
execute store success score is_forceloaded2 manhunt_info run forceload query -14 5
forceload add -14 5
scoreboard players set remove_forceload manhunt_info 1
tp @e[tag=trophy_sheep,type=minecraft:sheep] 0 -5 0
tp @e[tag=trophy_parrot,type=parrot] 0 -5 0
kill @e[tag=trophy_parrot,type=parrot]
fill 0 200 0 8 217 11 air
fill -16 207 2 -13 210 8 air
gamerule doTileDrops true