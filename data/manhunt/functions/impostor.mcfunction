scoreboard players operation $count manhunt_impostor = Impostor_Count manhunt_settings
scoreboard players set 2 manhunt_impostor 2

scoreboard players operation $minPlayers manhunt_impostor = $count manhunt_impostor
scoreboard players operation $minPlayers manhunt_impostor += 2 manhunt_impostor

execute store result score $hunters manhunt_impostor run execute if entity @e[tag=hunter]

execute unless score $minPlayers manhunt_impostor > $hunters manhunt_impostor run scoreboard players operation $impostors manhunt_impostor = $count manhunt_impostor

execute if score $minPlayers manhunt_impostor > $hunters manhunt_impostor run scoreboard players operation $impostors manhunt_impostor = $hunters manhunt_impostor
execute if score $minPlayers manhunt_impostor > $hunters manhunt_impostor run scoreboard players operation $impostors manhunt_impostor -= 2 manhunt_impostor

execute if score $impostors manhunt_impostor matches ..0 run scoreboard players set $impostors manhunt_impostor 0

scoreboard players operation $impostors2 manhunt_impostor = $impostors manhunt_impostor

execute if score $impostors manhunt_impostor matches 1.. run tag @e[tag=hunter] add possible_impostor

execute if score $impostors manhunt_impostor matches 1.. run scoreboard players set $searching manhunt_impostor 1