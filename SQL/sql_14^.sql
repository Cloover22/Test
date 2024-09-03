'''
[프로그래머스 SQL 고득점 KIT / SELECT]
상위 n개 레코드

-> 상위 n개 레코드 출력
'''

-- 맞는 문법
SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY DATETIME ASC
LIMIT 1

-- 틀린 문법
'''
서브 쿼리 SELECT 구문에서, 집계 함수와 함께 사용되는 NAME 컬럼의 의도는
최소 시간에 맞는 NAME을 고르려는 의도 였겠지만, SQL 에서는 MIN 값만 테이블에서 계산하고
NAME 은 임의의 값을 출력한다. 해당 서브쿼리 처럼 문법을 쓰기 위해서는 GROUP BY 와 함께 사용해야한다.
'''
SELECT A.NAME, A.B
FROM (
SELECT NAME, MIN(DATETIME) AS B
FROM ANIMAL_INS 
) AS A
ORDER BY NAME