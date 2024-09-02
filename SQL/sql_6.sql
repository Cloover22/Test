'''
[프로그래머스 SQL 고득점 KIT / SELECT]
조건에 맞는 개발자 찾기
'''

'''
비트 연산자 + 서브쿼리 문제
# 두 이진수 간의 AND 연산 후에 결과가 00000이 아니라면 (하나라도 1 이 있다면 True 이다.)
'''

SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'Python')
    OR SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#')
ORDER BY ID ASC