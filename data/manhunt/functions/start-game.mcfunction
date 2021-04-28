tellraw @a[tag=possible_manhunt] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n "}

scoreboard players reset @a manhunt_death

gamerule doImmediateRespawn true
execute if score Freeze_Weather manhunt_settings matches 1.. run gamerule doWeatherCycle false

tag @e[tag=possible_hunter] add hunter
tag @e[tag=possible_runner] add hunted

execute if score Impostor_Count manhunt_settings matches 1.. run function manhunt:impostor

tp @e[tag=possible_manhunt] @p[tag=requesting_manhunt]
scoreboard players reset @a[tag=requesting_manhunt] manhunt_info
scoreboard players reset @a manhunt_death

clear @a[tag=possible_manhunt]
xp set @a[tag=possible_manhunt] 0 levels
xp set @a[tag=possible_manhunt] 0 points
advancement revoke @a[tag=possible_manhunt] everything
effect clear @a[tag=possible_manhunt]
gamemode survival @a[tag=possible_manhunt]
#effect give @a[tag=hunter] slowness 10 255 true
#effect give @a[tag=hunted] slowness 5 255 true
#execute as @a[tag=hunter] run function manhunt:give_carrot
execute as @a[tag=hunter] run function manhunt:give_compass

execute at @p[tag=hunter] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b, Invisible:1b, Tags:["hunter_freeze", "armor_frozen", "frozen"]}
execute at @p[tag=hunted] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b, Invisible:1b, Tags:["runner_freeze", "armor_frozen", "frozen"]}

tag @a[tag=possible_manhunt] add frozen
execute as @a[tag=hunter] run scoreboard players operation @s manhunt_settings = Hunter_Freeze manhunt_settings
execute as @e[tag=hunter_freeze] run scoreboard players operation @s manhunt_settings = Hunter_Freeze manhunt_settings
execute as @a[tag=hunted] run scoreboard players operation @s manhunt_settings = Runner_Freeze manhunt_settings
execute as @e[tag=runner_freeze] run scoreboard players operation @s manhunt_settings = Runner_Freeze manhunt_settings

tag @a remove requesting_manhunt
tellraw @a[tag=possible_manhunt] ["",{"text":"The game has started!","color":"green"},{"text":"\n\n"},{"text":"Hunters: ","color":"aqua"},{"selector":"@a[tag=hunter]","bold":true,"color":"gold"},{"text":"\n"},{"text":"Runners: ","color":"aqua"},{"selector":"@a[tag=hunted]","bold":true,"color":"gold"}]

execute if score Start_Daytime manhunt_settings matches 1.. run time set day
execute if score Start_Daytime manhunt_settings matches 1.. run weather clear