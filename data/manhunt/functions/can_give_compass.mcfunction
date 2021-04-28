execute if entity @p[distance=0.001..1.425,gamemode=!spectator] run title @s actionbar {"text":"You are standing too close to another player.","color":"aqua"}
execute if entity @e[tag=hunted,limit=1,sort=nearest] run execute unless entity @p[distance=0.001..1.425] run execute if score Track_Nether manhunt_settings matches 1.. run function manhunt:give_compass
execute if entity @e[tag=hunted,limit=1,sort=nearest] run execute unless entity @p[distance=0.001..1.425] run execute unless score Track_Nether manhunt_settings matches 1.. run execute if score @s manhuntDimension matches 19 run function manhunt:give_compass
execute if entity @e[tag=hunted,limit=1,sort=nearest] run execute unless entity @p[distance=0.001..1.425] run execute unless score Track_Nether manhunt_settings matches 1.. run execute unless score @s manhuntDimension matches 19 run title @s actionbar {"text":"You cannot track in this dimension.","color":"aqua"}
execute if entity @e[tag=hunted,limit=1,sort=nearest] run execute unless entity @p[distance=0.001..1.425] run execute unless score Track_Nether manhunt_settings matches 1.. run execute unless score @s manhuntDimension matches 19 run function manhunt:return_compass
execute unless score @e[tag=hunted,limit=1,sort=nearest] manhuntDimension = @s manhuntDimension run execute unless entity @p[distance=0.001..1.425] run title @s actionbar ["",{"text":"No ","color":"aqua"},{"text":"runner ","bold":false,"color":"aqua"},{"text":"found in your dimension","color":"aqua"}]
execute unless score @e[tag=hunted,limit=1,sort=nearest] manhuntDimension = @s manhuntDimension run execute unless entity @p[distance=0.001..1.425] run function manhunt:return_compass