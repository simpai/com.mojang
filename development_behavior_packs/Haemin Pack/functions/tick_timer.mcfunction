# 매 틱마다 실행되는 타이머 함수
# 1. 타이머 증가
scoreboard players add @a tick_timer 1

# Debug: 타이머 작동 확인용 (나중에 삭제)
# title @a actionbar "Timer: "

# 2. 40틱(2초)마다 check_wave 실행 및 타이머 초기화
execute as @a[scores={tick_timer=40..}] run function check_wave
execute as @a[scores={tick_timer=40..}] run scoreboard players set @s tick_timer 0
