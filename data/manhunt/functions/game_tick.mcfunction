scoreboard objectives setdisplay sidebar manhunt_info

execute if score $searching manhunt_impostor matches 1.. run tag @e[tag=possible_impostor,limit=1,sort=random] add impostor
execute if score $searching manhunt_impostor matches 1.. run tag @e[tag=impostor] remove possible_impostor
execute if score $searching manhunt_impostor matches 1.. run scoreboard players remove $impostors manhunt_impostor 1

execute if score $impostors manhunt_impostor matches ..0 if score $searching manhunt_impostor matches 1.. run title @a[tag=impostor] actionbar {"text":"You are an impostor!","color":"dark_red"}
execute if score $impostors manhunt_impostor matches ..0 if score $searching manhunt_impostor matches 1.. run execute as @a[tag=hunter] if score $impostors manhunt_impostor matches 1.. run tellraw @a[tag=!impostor] ["",{"text":"There are ","color":"aqua"},{"score":{"name":"$impostors2","objective":"manhunt_impostor"},"bold":true,"color":"red"},{"text":" impostors","color":"red"},{"text":" among you.","color":"aqua"}]
execute if score $impostors manhunt_impostor matches ..0 if score $searching manhunt_impostor matches 1.. if score $impostors manhunt_impostor matches 2.. run tellraw @a[tag=impostor] ["",{"text":"Impostors: ","color":"aqua"},{"selector":"@a[tag=impostor]","bold":true,"color":"gold"}]
execute if score $impostors manhunt_impostor matches ..0 if score $searching manhunt_impostor matches 1.. run tellraw @a[tag=hunted] ["",{"text":"Impostors: ","color":"aqua"},{"selector":"@a[tag=impostor]","bold":true,"color":"gold"}]
execute if score $impostors manhunt_impostor matches ..0 if score $searching manhunt_impostor matches 1.. run tellraw @a[tag=impostor] ["",{"text":"You are an ","color":"aqua"},{"text":"impostor","bold":true,"color":"green"},{"text":"!","color":"aqua"},{"text":"\n\n"},{"text":"Your objective is to help the ","color":"aqua"},{"text":"runner","bold":true,"color":"green"},{"text":".","color":"aqua"}]

execute if score $impostors manhunt_impostor matches ..0 run scoreboard players set $searching manhunt_impostor 0

execute as @a[tag=impostor] at @s unless entity @s[tag=frozen] run function manhunt:show_hp

#execute if entity @a[tag=impostor] as @e[tag=hunted] run scoreboard players add @s manhunt_heart 1
#execute if entity @a[tag=impostor] as @e[tag=hunted] at @s run execute if score @s manhunt_heart > @s manhunt_hp run playsound minecraft:block.note_block.basedrum master @a[tag=impostor] ~ ~ ~ 0.2 0.2 0
#execute as @e[tag=hunted] if score @s manhunt_heart > @s manhunt_hp run scoreboard players set @s manhunt_heart 0

execute store result score Runners manhunt_info run execute if entity @a[tag=hunted]
execute store result score Hunters manhunt_info run execute if entity @a[tag=hunter]

execute as @a[tag=hunter] run execute store result score @s manhunt_compass run clear @s minecraft:compass{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}} 0
execute as @a[tag=hunter] run execute unless score @s manhunt_compass matches 1 run clear @s minecraft:compass{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}
execute as @a[tag=hunter] at @s run execute unless score @s manhunt_compass matches 1 run function manhunt:can_give_compass

execute as @a[tag=hunted, scores={manhunt_death=1..}] run tag @s add dead_hunted
tag @a[tag=dead_hunted] remove hunted
gamemode spectator @a[tag=dead_hunted]

gamerule sendCommandFeedback false

execute if score Runners manhunt_info matches ..0 run function manhunt:hunters-win
execute if score Hunters manhunt_info matches ..0 run function manhunt:runners-win
execute if score One_Life manhunt_settings matches 1.. run execute if entity @e[tag=dead_hunted] run function manhunt:hunters-win

execute store result score dragons manhunt_death run execute if entity @e[type=ender_dragon]

execute if score dragons manhunt_death matches 8 run function manhunt:runners-win

execute as @a[tag=frozen] at @s run tp @s[tag=hunter] @e[tag=hunter_freeze, limit=1, sort=nearest]
execute as @a[tag=frozen] at @s run tp @s[tag=hunted] @e[tag=runner_freeze, limit=1, sort=nearest]
execute as @a[tag=frozen] at @s run execute at @s if entity @s[tag=hunter] run execute at @s if entity @e[tag=hunted, distance=0.00000001..] run execute at @s facing entity @e[tag=hunted, distance=0.00000001.., limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

execute as @e[tag=manhunt] run execute store result score @s manhuntDimension run data get entity @s Dimension
execute if score Notify_Dimension manhunt_settings matches 1 as @a[tag=not_overworld, scores={manhuntDimension=19}] run title @a[tag=manhunt] actionbar ["",{"text":"Runner ","color":"aqua"},{"selector":"@s","bold":true,"color":"green"},{"text":" has entered the ","color":"aqua"},{"text":"overworld","bold":true,"color":"aqua"},{"text":"!","color":"aqua"}]
execute if score Notify_Dimension manhunt_settings matches 1 as @a[tag=overworld, scores={manhuntDimension=20}] run title @a[tag=manhunt] actionbar ["",{"text":"Runner ","color":"aqua"},{"selector":"@s","bold":true,"color":"green"},{"text":" has entered the ","color":"aqua"},{"text":"Nether","bold":true,"color":"dark_red"},{"text":"!","color":"aqua"}]
tag @a remove overworld
tag @a remove not_overworld
tag @a[tag=hunted, scores={manhuntDimension=19}] add overworld
tag @a[tag=!overworld] add not_overworld
tag @a[tag=!hunted] remove not_overworld