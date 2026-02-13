# 1. 몬스터가 없고, 아직 다음 웨이브 처리 중이 아닐 때만 점수를 1점 올리고 처리 중 태그 부여
execute as @a[tag=ingame, tag=!wave_processing] unless entity @e[type=my:honey_the_pig] run scoreboard players add @s wave 1
execute as @a[tag=ingame, tag=!wave_processing] unless entity @e[type=my:honey_the_pig] run tag @s add wave_processing

# 2. 웨이브 2 몬스터 소환 (소환 직후 처리 중 태그 제거하여 다시 감지 시작)
execute as @a[tag=ingame, tag=wave_processing, scores={wave=2}] at @s run summon my:honey_the_pig ~3 ~2 ~
execute as @a[tag=ingame, tag=wave_processing, scores={wave=2}] at @s run summon my:honey_the_pig ~-3 ~2 ~
execute as @a[tag=ingame, tag=wave_processing, scores={wave=2}] at @s run summon my:honey_the_pig ~ ~2 ~3
execute as @a[tag=ingame, tag=wave_processing, scores={wave=2}] run tag @s remove wave_processing
execute as @a[tag=ingame, scores={wave=2}] run say "웨이브 2 시작!"

# 3. 웨이브 3 몬스터 소환
execute as @a[tag=ingame, tag=wave_processing, scores={wave=3}] at @s run summon my:honey_the_pig ~3 ~2 ~
execute as @a[tag=ingame, tag=wave_processing, scores={wave=3}] at @s run summon my:honey_the_pig ~-3 ~2 ~
execute as @a[tag=ingame, tag=wave_processing, scores={wave=3}] at @s run summon my:honey_the_pig ~ ~2 ~3
execute as @a[tag=ingame, tag=wave_processing, scores={wave=3}] at @s run summon my:honey_the_pig ~3 ~2 ~
execute as @a[tag=ingame, tag=wave_processing, scores={wave=3}] at @s run summon my:honey_the_pig ~-3 ~2 ~
execute as @a[tag=ingame, tag=wave_processing, scores={wave=3}] at @s run summon my:honey_the_pig ~ ~2 ~3
execute as @a[tag=ingame, tag=wave_processing, scores={wave=3}] run tag @s remove wave_processing
execute as @a[tag=ingame, scores={wave=3}] run say "웨이브 3 시작!"


# 4. 게임 종료 (웨이브 3 클리어 -> 웨이브 4가 되면 종료)
execute as @a[tag=ingame, scores={wave=4}] run function stop
