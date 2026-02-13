# 점수판 및 게임 설정 초기화
# 점수판 및 게임 설정 초기화
scoreboard objectives add wave dummy "Wave Counter"
scoreboard objectives setdisplay sidebar wave
tag @a remove ingame

# 화면 가리는 로그 끄기 설정
#gamerule sendcommandfeedback false
#gamerule commandblockoutput false

# 아이템 지급 및 장착 (식별자는 본인이 만든 것으로 수정하세요)
give @a diamond_sword 1
replaceitem entity @a slot.armor.head 0 diamond_helmet

say "게임 설정이 완료되었습니다!"