# 먼저 객체 생성
scoreboard objectives add wave dummy "Wave Counter"
scoreboard objectives add tick_timer dummy "Tick Timer"

# 초기값 설정
scoreboard players set @a wave 0
scoreboard objectives setdisplay sidebar wave
tag @a remove ingame

# 화면 가리는 로그 끄기 설정
gamerule sendcommandfeedback false
gamerule commandblockoutput false

# 아이템 지급 및 장착 (식별자는 본인이 만든 것으로 수정하세요)
give @a[hasitem={item=diamond_sword, quantity=0}] diamond_sword 1
replaceitem entity @a[hasitem={item=diamond_helmet, quantity=0}] slot.armor.head 0 diamond_helmet

# 기존 몬스터 제거 (게임 재시작 시 잔여 몬스터 삭제)
kill @e[type=my:honey_the_pig]

# 버튼을 누른 플레이어(또는 모든 플레이어)에게 태그 부여
tag @a add ingame
tag @a remove wave_processing

# 웨이브 점수 1점으로 시작
scoreboard players set @a wave 1

# 첫 번째 몬스터 소환
summon my:honey_the_pig ~ ~2 ~

say "게임 설정이 완료되었습니다!"
