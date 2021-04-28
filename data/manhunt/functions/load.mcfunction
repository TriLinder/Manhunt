tellraw @a ["",{"text":"Manhunt ","bold":true,"color":"green"},{"text":"by TriLinder has been loaded.","color":"aqua"}]
gamerule sendCommandFeedback false
scoreboard objectives add carrot_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add manhunt_settings dummy "Manhunt Settings"
scoreboard objectives add manhunt_death deathCount
scoreboard objectives add manhunt_info dummy "Game info"
scoreboard objectives add manhuntDimension dummy
scoreboard objectives add manhunt_compass dummy
scoreboard objectives add start_manhunt trigger
scoreboard objectives add leave_manhut trigger
scoreboard objectives add settings_manhunt trigger
scoreboard objectives add join_hunter trigger
scoreboard objectives add join_runner trigger
scoreboard objectives add manhunt_impostor dummy
scoreboard objectives add manhunt_hp health
#scoreboard objectives add manhunt_heart dummy

execute unless score -------- manhunt_settings matches 99 run function manhunt:reset_settings
scoreboard players set -------- manhunt_info 99
function manhunt:one_second