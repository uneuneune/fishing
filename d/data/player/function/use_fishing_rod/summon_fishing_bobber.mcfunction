tag @s add FishingBobber
data merge entity @s {Invisible:1b,Invulnerable:1b}

scoreboard players operation @s entity.fishing_bobber.owner = @p uid

# positioned ^x ^y ^z のzの値を変更することで威力を変更
execute as @p rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["MotionSource"]}

execute positioned 0.0 0.0 0.0 run data modify entity @s Motion set from entity @n[tag=MotionSource] Pos

execute positioned 0.0 0.0 0.0 run kill @n[tag=MotionSource]