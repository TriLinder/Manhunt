execute as @a[scores={carrot_use=1..}, tag=hunter, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{display:{Name:"{\"text\":\"Give Compass\",\"bold\":true,\"color\":\"red\"}"}}}}] at @s run function manhunt:can_give_compass
scoreboard players set @a carrot_use 0

execute unless entity @e[tag=requesting_manhunt] run execute as @a run trigger join_hunter add 0
execute unless entity @e[tag=requesting_manhunt] run execute as @a run trigger join_runner add 0

tag @e[scores={join_hunter=1..}] add possible_hunter
tag @e[scores={join_runner=1..}] add possible_runner

scoreboard players set @e join_runner 0
scoreboard players set @e join_hunter 0

execute as @a[scores={start_manhunt=1..}] at @s run function manhunt:request-game
execute as @a[scores={leave_manhut=1..}] at @s run function manhunt:leave-game
execute as @a[scores={settings_manhunt=1..}] at @s run function manhunt:settings
scoreboard players set @a settings_manhunt 0
scoreboard players set @a leave_manhut 0
scoreboard players set @a start_manhunt 0
execute unless entity @a[tag=requesting_manhunt] run execute unless entity @e[tag=manhunt] run scoreboard players enable @a start_manhunt
execute if entity @a[tag=requesting_manhunt] run execute as @a run trigger start_manhunt set 0
execute if entity @a[tag=manhunt] run execute as @a run trigger start_manhunt set 0
scoreboard players enable @a[tag=manhunt] leave_manhut
execute as @a[tag=!manhunt] run trigger leave_manhut set 0
scoreboard players enable @a settings_manhunt

tag @e[tag=hunter] add manhunt
tag @e[tag=hunted] add manhunt
tag @e[tag=impostor] add manhunt
tag @a[tag=manhunt] remove requesting_manhunt
tag @a[tag=manhunt] remove possible_runner
tag @a[tag=manhunt] remove possible_hunter

tag @a[tag=possible_runner] remove possible_hunter
tag @a[tag=possible_hunter] add possible_manhunt
tag @a[tag=possible_runner] add possible_manhunt
execute if entity @a[tag=requesting_manhunt] run title @a actionbar ["",{"text":"Runners:","color":"aqua"},{"text":" "},{"selector":"@a[tag=possible_runner]","bold":true,"color":"gold"},{"text":" \u0020Hunters:","color":"aqua"},{"text":" "},{"selector":"@a[tag=possible_hunter]","bold":true,"color":"gold"},{"text":" ","bold":true,"color":"gold"},{"score":{"name":"@p[tag=requesting_manhunt]","objective":"manhunt_info"},"bold":true,"color":"green"},{"text":" seconds left.","color":"green"}]
execute as @a[tag=requesting_manhunt] run execute if score @s manhunt_info matches ..1 run tag @s remove requesting_manhunt
execute unless entity @a[tag=requesting_manhunt] run tag @a remove possible_hunter
execute unless entity @a[tag=requesting_manhunt] run tag @a remove possible_runner
execute unless entity @a[tag=requesting_manhunt] run tag @a remove possible_manhunt
execute if entity @e[tag=possible_hunter] if entity @e[tag=possible_runner] run execute as @a[tag=requesting_manhunt] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"Click ","color":"aqua"},{"text":"[","bold":true,"color":"green"},{"text":"HERE","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function manhunt:start-game"}},{"text":"]","bold":true,"color":"green"},{"text":" to start the game.","color":"aqua"}]
execute as @a[tag=possible_manhunt] run tellraw @s[tag=!requesting_manhunt]  ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"Click ","color":"aqua"},{"text":"[","bold":true,"color":"green"},{"text":"HERE","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function manhunt:leave-game"}},{"text":"]","bold":true,"color":"green"},{"text":" to leave the game.\n Your inventory will be cleared on the start of the game!","color":"aqua"}]
execute as @a[tag=requesting_manhunt] at @s run tag @a[tag=requesting_manhunt, distance=1..] remove requesting_manhunt

scoreboard players reset @a[tag=!frozen] manhunt_settings
execute if entity @a[tag=manhunt] run scoreboard players reset @a manhunt_info
execute if entity @e[tag=manhunt] run function manhunt:game_tick

execute as @e[type=item, tag=!return] run execute if data entity @s[nbt={Item:{tag:{display:{Name:'{"text":"Manhunt Compass","bold":true,"color":"aqua"}'}}}}] Thrower run kill @s