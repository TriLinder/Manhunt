execute unless score Build_Trophy manhunt_settings matches 1.. run tp @a[tag=manhunt] @r[tag=manhunt_winner]
gamemode creative @a[tag=manhunt]
#clear @a[tag=manhunt]
execute if score Build_Trophy manhunt_settings matches 1.. run function manhunt:build_trophy
execute if score Build_Trophy manhunt_settings matches 1.. run function manhunt:build_observatory
execute if score Build_Trophy manhunt_settings matches 1.. run tp @a[tag=manhunt] -14 208 5
execute if score Build_Trophy manhunt_settings matches 1.. run spawnpoint @a[tag=manhunt] -14 208 5
execute if score Build_Trophy manhunt_settings matches 1.. run tp @a[tag=manhunt_winner] 5 212 5
execute if score Build_Trophy manhunt_settings matches 1.. run spawnpoint @a[tag=manhunt_winner] 5 212 5
execute as @a[tag=manhunt] run function manhunt:leave-game

scoreboard objectives setdisplay sidebar

effect give @a[tag=manhunt_winner] glowing 15 255 true
execute as @a[tag=manhunt_winner] run scoreboard players operation @s manhunt_info = Firework_Time manhunt_settings

gamerule doImmediateRespawn false
gamerule sendCommandFeedback true
execute if score Freeze_Weather manhunt_settings matches 1.. run gamerule doWeatherCycle true

scoreboard players set $searching manhunt_impostor 0