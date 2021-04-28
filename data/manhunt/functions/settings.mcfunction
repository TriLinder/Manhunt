scoreboard objectives setdisplay sidebar manhunt_settings
tellraw @s ["",{"text":"You can","color":"aqua"},{"text":" RESET ","bold":true,"color":"aqua"},{"text":"the settings by clicking","color":"aqua"},{"text":" ","bold":true,"color":"aqua"},{"text":"[HERE]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tellraw @s [\"\",{\"text\":\"Are you sure you want to reset the settings?\",\"color\":\"aqua\"},{\"text\":\" \"},{\"text\":\"[YES]\",\"bold\":true,\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function manhunt:reset_settings\"}}]"}}]
tellraw @s ["",{"text":"Manhunt ","bold":true,"color":"green"},{"text":"Settings:","color":"aqua"},{"text":"\n"},{"text":"-----------------","color":"gold"}]
tellraw @s ["",{"text":"Start Daytime","bold":true,"color":"green"},{"text":" - Start the game in the daytime and with clear weather. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Start_Daytime","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Start_Daytime manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Start_Daytime manhunt_settings 0"}}]
tellraw @s ["",{"text":"Request Timer ","bold":true,"color":"green"},{"text":"- Timer for game requesting. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Request_Timer","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"15","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Request_Timer manhunt_settings 15"}},{"text":"|","color":"gold"},{"text":"30","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Request_Timer manhunt_settings 30"}},{"text":"|","color":"gold"},{"text":"60","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Request_Timer manhunt_settings 60"}}]
tellraw @s ["",{"text":"Freeze Weather","bold":true,"color":"green"},{"text":" - Freezes the weather during the game. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Freeze_Weather","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Freeze_Weather manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Freeze_Weather manhunt_settings 0"}}]
tellraw @s ["",{"text":"Firework time","bold":true,"color":"green"},{"text":" - For how long fireworks are enabled for the winning team(in seconds). ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Firework_Time","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"5","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Firework_Time manhunt_settings 5"}},{"text":"|","color":"gold"},{"text":"10","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Firework_Time manhunt_settings 10"}},{"text":"|","color":"gold"},{"text":"15","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Firework_Time manhunt_settings 15"}},{"text":"|","color":"gold"},{"text":"30","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Firework_Time manhunt_settings 30"}},{"text":"|","color":"gold"},{"text":"45","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Firework_Time manhunt_settings 45"}},{"text":"|","color":"gold"},{"text":"60","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Firework_Time manhunt_settings 60"}}]
tellraw @s ["",{"text":"Notify Dimension ","bold":true,"color":"green"},{"text":"- Notifies hunters when a runner enters another dimension. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Notify_Dimension","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Notify_Dimension manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Notify_Dimension manhunt_settings 0"}}]
tellraw @s ["",{"text":"Runner Freeze","bold":true,"color":"green"},{"text":" - Modifies how long runners will be frozen at the start. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Runner_Freeze","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"5","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Runner_Freeze manhunt_settings 5"}},{"text":"|","color":"gold"},{"text":"10","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Runner_Freeze manhunt_settings 10"}},{"text":"|","color":"gold"},{"text":"15","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Runner_Freeze manhunt_settings 15"}},{"text":"|","color":"gold"},{"text":"20","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Runner_Freeze manhunt_settings 20"}},{"text":"|","color":"gold"},{"text":"30","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Runner_Freeze manhunt_settings 30"}}]
tellraw @s ["",{"text":"Hunter Freeze","bold":true,"color":"green"},{"text":" - Modifies how long hunters will be frozen at the start. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Hunter_Freeze","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"5","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Hunter_Freeze manhunt_settings 5"}},{"text":"|","color":"gold"},{"text":"10","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Hunter_Freeze manhunt_settings 10"}},{"text":"|","color":"gold"},{"text":"15","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Hunter_Freeze manhunt_settings 15"}},{"text":"|","color":"gold"},{"text":"20","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Hunter_Freeze manhunt_settings 20"}},{"text":"|","color":"gold"},{"text":"30","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Hunter_Freeze manhunt_settings 30"}}]
tellraw @s ["",{"text":"Track Nether","bold":true,"color":"green"},{"text":" - Allows hunters to track runners outside overworld. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Track_Nether","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Track_Nether manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Track_Nether manhunt_settings 0"}}]
tellraw @s ["",{"text":"One life ","bold":true,"color":"green"},{"text":"- Runners only have one shared life. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"One_Life","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set One_Life manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set One_Life manhunt_settings 0"}}]
tellraw @s ["",{"text":"Request Hints","bold":true,"color":"green"},{"text":" - Shows players how to leave a game in a game request. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Request_Hints","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Request_Hints manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Request_Hints manhunt_settings 0"}}]
tellraw @s ["",{"text":"Build Trophy","bold":true,"color":"green"},{"text":" - Build a trophy for the winning team. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Build_Trophy","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Build_Trophy manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Build_Trophy manhunt_settings 0"}}]
tellraw @s ["",{"text":"Trophy parrot ","bold":true,"color":"green"},{"text":"- Modifies whether the trophy should include a dancing parrot. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Trophy_Parrot","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Trophy_Parrot manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Trophy_Parrot manhunt_settings 0"}}]
tellraw @s ["",{"text":"Trophy sheep ","bold":true,"color":"green"},{"text":"- Modifies whether the trophy should include rainbow sheep. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Trophy_Sheep","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"ON","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Trophy_Sheep manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"OFF","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set Trophy_Sheep manhunt_settings 0"}}]
tellraw @s ["",{"text":"Impostor Count","bold":true,"color":"green"},{"text":" - Numer of impostors. ","color":"aqua"},{"text":"(Current value = ","color":"gold"},{"score":{"name":"Impostor_Count","objective":"manhunt_settings"},"color":"gold"},{"text":") ","color":"gold"},{"text":"0","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Impostor_Count manhunt_settings 0"}},{"text":"|","color":"gold"},{"text":"1","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Impostor_Count manhunt_settings 1"}},{"text":"|","color":"gold"},{"text":"2","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Impostor_Count manhunt_settings 2"}},{"text":"|","color":"gold"},{"text":"3","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set Impostor_Count manhunt_settings 3"}}]