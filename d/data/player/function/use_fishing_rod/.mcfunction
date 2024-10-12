#say a

execute anchored eyes positioned ^ ^ ^ run kill @n[type=fishing_bobber]

execute as @e[tag=FishingBobber] unless score @s entity.fishing_bobber.owner = @p uid as @p run execute summon armor_stand run function player:use_fishing_rod/summon_fishing_bobber

execute as @e[tag=FishingBobber] if score @s entity.fishing_bobber.owner = @p uid run kill @s

scoreboard players reset @s player.use_fishing_rod