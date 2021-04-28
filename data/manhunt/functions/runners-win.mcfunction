title @a[tag=manhunt] subtitle {"selector":"@a[tag=hunted]","bold":true,"color":"gold"}
title @a[tag=manhunt] title ["",{"text":"Runners ","bold":true,"color":"gold"},{"text":"WIN!","bold":true,"color":"green"}]
tellraw @a[tag=manhunt] ["",{"text":"Runners ","bold":true,"color":"gold"},{"text":"WIN!","color":"aqua"},{"text":"\n\n"},{"text":"Runners:","color":"gold"},{"text":" ","color":"aqua"},{"selector":"@a[tag=hunted]","bold":true,"color":"gold"}]
execute if entity @e[tag=impostor] run tellraw @a[tag=manhunt] ["",{"text":"Impostors: ","color":"gold"},{"selector":"@a[tag=impostor]","bold":true,"color":"gold"}]

execute in minecraft:overworld run spawnpoint @s 0 62 0

tag @e[tag=hunted] add manhunt_winner
tag @e[tag=impostor] add manhunt_winner

function manhunt:game-over