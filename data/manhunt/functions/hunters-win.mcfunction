tag @a[tag=impostor] remove hunter

title @a[tag=manhunt] subtitle {"selector":"@a[tag=hunters]","bold":true,"color":"gold"}
title @a[tag=manhunt] title ["",{"text":"Hunters ","bold":true,"color":"gold"},{"text":"WIN!","bold":true,"color":"green"}]
tellraw @a[tag=manhunt] ["",{"text":"Hunters ","bold":true,"color":"gold"},{"text":"WIN!","color":"aqua"},{"text":"\n\n"},{"text":"Hunters:","color":"gold"},{"text":" ","color":"aqua"},{"selector":"@a[tag=hunter]","bold":true,"color":"gold"}]
execute if entity @e[tag=impostor] run tellraw @a[tag=manhunt] ["",{"text":"Impostors: ","color":"gold"},{"selector":"@a[tag=impostor]","bold":true,"color":"gold"}]

tag @e[tag=hunter] add manhunt_winner

function manhunt:game-over