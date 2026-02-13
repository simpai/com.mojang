# 기존 몬스터 제거 (게임 재시작 시 잔여 몬스터 삭제)
kill @e[type=my:honey_the_pig]

# 버튼을 누른 플레이어(또는 모든 플레이어)에게 태그 부여
tag @a add ingame
tag @a remove wave_processing


# 웨이브 점수 1점으로 시작
scoreboard players set @a wave 1

# 첫 번째 몬스터 소환
summon my:honey_the_pig ~ ~2 ~