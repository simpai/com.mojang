# 게임 종료 처리 (웨이브 3 클리어 후)
say "게임이 끝났습니다! 수고하셨습니다."

# 명령어 피드백 및 블록 출력 켜기 (요청사항)
gamerule sendcommandfeedback true
gamerule commandblockoutput true

# 화면의 웨이브 카운터 표시 끄기
scoreboard objectives setdisplay sidebar

# 게임 진행 태그 제거
tag @a remove ingame
tag @a remove wave_processing
