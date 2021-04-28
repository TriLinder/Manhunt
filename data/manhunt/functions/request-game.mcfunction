scoreboard players set @s start_manhunt 0

execute if entity @a[tag=requesting_manhunt, distance=0.0001..] run tellraw @s ["",{"selector":"@p[tag=requesting_manhunt]","color":"aqua"},{"text":" is already requesting a game.","color":"aqua"}]
execute if entity @a[tag=manhunt] run tellraw @s ["",{"text":"A game of ","color":"aqua"},{"text":"Manhunt ","bold":true,"color":"green"},{"text":"is already running.","color":"aqua"}]
execute unless entity @a[tag=requesting_manhunt] unless entity @a[tag=manhunt] run scoreboard players enable @a join_hunter
execute unless entity @a[tag=requesting_manhunt] unless entity @a[tag=manhunt] run scoreboard players enable @a join_runner
execute unless entity @a[tag=requesting_manhunt] unless entity @a[tag=manhunt] run tag @s add requesting_manhunt
scoreboard players operation @s[tag=requesting_manhunt] manhunt_info = Request_Timer manhunt_settings
execute unless entity @a[tag=requesting_manhunt, distance=0.0001..] unless entity @a[tag=manhunt] run tellraw @a[tag=!requesting_manhunt] ["",{"selector":"@s","bold":true,"color":"gold"},{"text":" wants to play ","color":"aqua"},{"text":"Manhunt","bold":true,"color":"green"},{"text":".","color":"aqua"}]
execute unless entity @a[tag=requesting_manhunt, distance=0.0001..] unless entity @a[tag=manhunt] run tellraw @a ["",{"text":"You can join in as a ","color":"aqua"},{"text":"RUNNER","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger join_runner"}},{"text":" ","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger join_runner"}},{"text":"or a ","color":"aqua"},{"text":"HUNTER","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger join_hunter"}},{"text":"","color":"aqua"}]
execute if score Request_Hints manhunt_settings matches 1 run execute unless entity @a[tag=requesting_manhunt, distance=0.0001..] unless entity @a[tag=manhunt] run tellraw @a[tag=!requesting_manhunt] ["",{"text":"\nYour inventory will be cleared!\nYou can leave the game by clicking ","color":"aqua"},{"text":"[HERE]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function manhunt:leave-game"}},{"text":" or by executing ","color":"aqua"},{"text":"/function manhunt:leave-game","bold":true,"color":"green","clickEvent":{"action":"copy_to_clipboard","value":"/function manhunt:leave-game"}},{"text":" (Click to copy to clipboard).","color":"aqua"}]
execute if score Request_Hints manhunt_settings matches 1 run execute unless entity @a[tag=requesting_manhunt, distance=0.0001..] unless entity @a[tag=manhunt] run tellraw @s ["",{"text":"\nYour inventory will be cleared!\nYou can stop the request by clicking ","color":"aqua"},{"text":"[HERE]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function manhunt:leave-game"}},{"text":" or by executing ","color":"aqua"},{"text":"/function manhunt:leave-game","bold":true,"color":"green","clickEvent":{"action":"copy_to_clipboard","value":"/function manhunt:leave-game"}},{"text":" (Click to copy to clipboard).","color":"aqua"}]