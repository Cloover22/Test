'''
[프로그래머스 SQL 고득점 KIT / SELECT]
3월에 태어난 여성 회원 목록 출력하기
'''

SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') as DATE_OF_BIRTH
FROM MEMBER_PROFILE
-- Date Time Format에 MONTH 함수를 쓰면 '월' select 가능
WHERE MONTH(DATE_OF_BIRTH) = 3 AND TLNO is not null AND GENDER = 'W'
ORDER BY MEMBER_ID ASC